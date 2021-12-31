#include "types.h"
#include "x86.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "date.h"

int sys_freemem(void){  // llamada al sistema FREEMEM
    int type;
    if(argint(0, &type) < 0)    // comprobamos que se haya pasado el argumento
        return -1;
    if(type>1)  // si el type no es ni 0 ni 1
       return -1;

    if(type==F_PAGES)
        return getLengthFreeList();
    else if(type==F_BYTES)
        return getLengthFreeList()*PGSIZE;
    return -1;
}

int
sys_date(void){ // llamada al sistema DATE
    struct rtcdate * r = NULL;

    if(argptr(0, (void**)&r, sizeof(struct rtcdate)) < 0)   // comprobamos que se haya pasado el argumento
        return -1;

    cmostime(r);    // realizamos la llamada que nos devuelve los datos necesarios

    return 0;
}

int
sys_fork(void)
{
  return fork();
}

int
sys_exit(void)  // llamada al sistema EXIT
{
  int status;
  if(argint(0, &status) < 0)    // comprobamos que se haya pasado el argumento
    return -1;

  status = status << 8; // desplazamos el status para que se adecue al formato del exit
  
  exit(status); // realizamos la llamada exit
  
  return 0;  // not reached
}

int
sys_wait(void)  // llamada al sistema WAIT
{
  int * status;
  if(argptr(0, (void**)&status, sizeof(int)) < 0)   // comprobamos que se haya pasado el argumento
     return -1;

  return wait(status);  // realizamos la llamada wait
}

int
sys_kill(void)
{
  int pid;

  if(argint(0, &pid) < 0)
    return -1;
  return kill(pid);
}

int
sys_getpid(void)
{
  return myproc()->pid;
}

int
sys_sbrk(void)  // llamada al sistema SBRK. Es un aumento de memoria del proceso de forma diferida 
{
  int n;
  if(argint(0, &n) < 0) // si los argumentos no se han pasado bien    
    return -1;  // no hacemos nada y devolvemos codigo de error
  
  int addr;
  addr = myproc()->sz; // la direccion que nos devuelve es igual al size (por el esquema de direccionamiento de xv6)

  if(n >= 0){  
    myproc()->sz +=n;   // aumentamos la memoria del proceso
    lcr3(V2P(myproc()->pgdir)); // invalidamos el TLB
  }else if(growproc(n) < 0) // growproc hace también lcr3()
      return -1;
 
  return addr;
}

int
sys_sleep(void)
{
  int n;
  uint ticks0;

  if(argint(0, &n) < 0)
    return -1;
  acquire(&tickslock);
  ticks0 = ticks;
  while(ticks - ticks0 < n){
    if(myproc()->killed){
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

// Return how many clock tick interrupts have occurred since start.
int
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}
