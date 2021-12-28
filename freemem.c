#include "types.h"
#include "user.h"
int
main (int argc, char * argv[]){
    if(argc==0){
        printf(2, "invalid arguments: you must specify whether you want to get the number of pages or bytes available for processes \n");
        exit(1);
    }
    if(freemem()){
        printf(2, "freemem failed \n");
        exit(0);
    }
}
