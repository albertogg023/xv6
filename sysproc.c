#include "types.h"
#include "x86.h"
#include "defs.h"
#include "date.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"

int
sys_date(void){
    struct rtcdate * r = NULL;

    if(argptr(0, (void**)&r, sizeof(struct rtcdate)) < 0)
        return -1;

    cmostime(r);

    return 0;
}


int
sys_fork(void)
{
  return fork();
}

int
sys_exit(void)
{
  int status;
  if(argint(0, &status) < 0)
    return -1;
  status = status << 8;
  myproc()->status = status;
  exit(status);
  return 0;  // not reached
}

int
sys_wait(void)
{
  int *status;
  // sacamos status
  // desplazar status  
    if(argptr(0, (void**)&status, sizeof(int)) < 0)
        return -1;
  return wait(status);
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
sys_sbrk(void)
{
  int addr;
  int n;

  if(argint(0, &n) < 0) // si los argumentos no se han pasado bien    
    return -1;  // no hacemos nada y devolvemos codigo de error
  
  addr = myproc()->sz; // la direccion que nos devuelve es igual al size (por el esquema de direccion de xv6)

  if(n >= 0) // si la memoria a obtener es 0 o positiva
    myproc()->sz += n;  // indicamos que la memoria que quiere el proceso es mayor ahora
  else if(growproc(n) < 0)  // si no hemos podido aumentar la memoria
    return -1;  // no hacemos nada y devolvemos codigo de error
 
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

// return how many clock tick interrupts have occurred
// since start.
int
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}
