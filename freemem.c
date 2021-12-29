#include "types.h"
#include "user.h"
int
main (int argc, char * argv[]){
    if(argc==0){
        printf(2, "invalid arguments: you must specify whether you want to get the number of pages (0) or bytes available for processes (1) \n");
        exit(1);
    }
    if(argv[1]>1){
        printf(2, "invalid arguments: you must specify whether you want to get the number of pages (0) or bytes available for processes (1) \n");
        exit(1);
    }

    if(argv[1]==0){
        printf(1, "Number of free physical pages for processes: %d", freemem((argv[1])));
        exit(0);
    }else{
       printf(1, "Number of free bytes for processes: %d", freemem((argv[1])));
       exit(0);
    }

}
