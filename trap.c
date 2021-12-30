#include "types.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "x86.h"
#include "traps.h"
#include "spinlock.h"

// Interrupt descriptor table (shared by all CPUs).
struct gatedesc idt[256];
extern uint vectors[];  // in vectors.S: array of 256 entry pointers
struct spinlock tickslock;
uint ticks;

void
tvinit(void)
{
  int i;

  for(i = 0; i < 256; i++)
    SETGATE(idt[i], 0, SEG_KCODE<<3, vectors[i], 0);
  SETGATE(idt[T_SYSCALL], 1, SEG_KCODE<<3, vectors[T_SYSCALL], DPL_USER);

  initlock(&tickslock, "time");
}

void
idtinit(void)
{
  lidt(idt, sizeof(idt));
}

//PAGEBREAK: 41
void
trap(struct trapframe *tf)
{
  // Llamadas al sistema
  if(tf->trapno == T_SYSCALL){
    if(myproc()->killed)
      exit(tf->trapno);
    myproc()->tf = tf;
    syscall();
    if(myproc()->killed)
      exit(tf->trapno);
    return;
  }
  // Interrupciones HW
  switch(tf->trapno){
  case T_IRQ0 + IRQ_TIMER:
    if(cpuid() == 0){
      acquire(&tickslock);
      ticks++;
      wakeup(&ticks);
      release(&tickslock);
    }
    lapiceoi();
    break;
  case T_IRQ0 + IRQ_IDE:
    ideintr();
    lapiceoi();
    break;
  case T_IRQ0 + IRQ_IDE+1:
    // Bochs generates spurious IDE1 interrupts.
    break;
  case T_IRQ0 + IRQ_KBD:
    kbdintr();
    lapiceoi();
    break;
  case T_IRQ0 + IRQ_COM1:
    uartintr();
    lapiceoi();
    break;
  case T_IRQ0 + 7:
  case T_IRQ0 + IRQ_SPURIOUS:
    cprintf("cpu%d: spurious interrupt at %x:%x\n",
            cpuid(), tf->cs, tf->eip);
    lapiceoi();
    break;

  //PAGEBREAK: 14
  // Fallo de pagina
  case 14:
    // Comprobamos la dirección que ha provocado el error
    if(rcr2() >= KERNBASE) {
	    cprintf("Process killed: the process asked for a kernel memory direction \n");
    	myproc()->killed = 1;
    } else if(rcr2() > myproc()->sz){
        cprintf("Process killed: the process asked for more directions than permitted \n");          
    	myproc()->killed = 1;
    }else if((PGROUNDDOWN(rcr2()) >= tf->esp-PGSIZE*2 && PGROUNDDOWN(rcr2()) <= tf->esp-PGSIZE)){
        cprintf("Process killed: stack overflow \n");       
    	myproc()->killed = 1;
    }else{
      char * mem = kalloc(); // reservamos memoria
      if(mem == 0){   // si no se ha podido reservar
        cprintf("allocuvm out of memory\n");
        kfree(mem);
        myproc()->killed = 1;
        return;
      }
      memset(mem, 0, PGSIZE);   // inicializamos a cero los bits de la página para quitar basura
      if(mappages(myproc()->pgdir, (char*)PGROUNDDOWN(rcr2()), PGSIZE, V2P(mem), PTE_W | PTE_U) == -1) {   // comprobamos si se ha podido mapear lo reservado
        cprintf("allocuvm out of memory (2)\n");
        deallocuvm(myproc()->pgdir, myproc()->sz - PGSIZE, myproc()->sz );
        kfree(mem);
        myproc()->killed = 1;
        return;
      }
    }
    cprintf("pid %d %s: trap %d err %d on cpu %d "
            "eip 0x%x addr 0x%x--kill proc\n",
            myproc()->pid, myproc()->name, tf->trapno,
            tf->err, cpuid(), tf->eip, rcr2());
    break;	
    default:
      if(myproc() == 0 || (tf->cs&3) == 0){
          // In kernel, it must be our mistake.
          cprintf("unexpected trap %d from cpu %d eip %x (cr2=0x%x)\n",
                tf->trapno, cpuid(), tf->eip, rcr2());
          panic("trap");
      }
        // In user space, assume process misbehaved.
      cprintf("pid %d %s: trap %d err %d on cpu %d "
            "eip 0x%x addr 0x%x--kill proc\n",
            myproc()->pid, myproc()->name, tf->trapno,
            tf->err, cpuid(), tf->eip, rcr2());
      myproc()->killed = 1;
      break;
  }
  // Force process exit if it has been killed and is in user space.
  // (If it is still executing in the kernel, let it keep running
  // until it gets to the regular system call return.)
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
    exit(tf->trapno+1); // por

  // Force process to give up CPU on clock tick.
  // If interrupts were on while locks held, would need to check nlock.
  if(myproc() && myproc()->state == RUNNING &&
     tf->trapno == T_IRQ0+IRQ_TIMER)
    yield();

  // Check if the process has been killed since we yielded
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
    exit(tf->trapno+1);

}
