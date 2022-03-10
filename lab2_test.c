#include "types.h"
#include "user.h"

int PScheduler(void);
int donate(void);
int agetest(void);
int testdefault(void);

int main(int argc, char *argv[])
{

  printf(1, "\n This program tests the correctness of your lab#2\n");
  
//	PScheduler();
//	donate();
	agetest();
//       	testdefault();
	return 0;
}
  
    
int PScheduler(void){
		 
    // use this part to test the priority scheduler. Assuming that the priorities range between range between 0 to 31
    // 0 is the highest priority and 31 is the lowest priority.  

    int pid;
    int i,j,k;
  
    printf(1, "\n  Step 2: testing the priority scheduler and setpriority(int priority)) systema call:\n");
    printf(1, "\n  Step 2: Assuming that the priorities range between range between 0 to 31\n");
    printf(1, "\n  Step 2: 0 is the highest priority. All processes have a default priority of 10\n");
    printf(1, "\n  Step 2: The parent processes will switch to priority 0\n");
    setpriority(0);
    for (i = 0; i <  3; i++) {
	pid = fork();
	if (pid > 0 ) {
		continue;
        }
	else if ( pid == 0) {

		setpriority(30-10*i);	
		for (j=0;j<50000;j++) {
			for(k=0;k<1000;k++) {
				asm("nop"); 
                        }
                }
		printf(1, "\n child# %d with priority %d has finished! \n",getpid(),30-10*i);		
		exit(0);
        } else {
	    printf(2," \n Error \n");		
        }
    }

    if(pid > 0) {
	for (i = 0; i <  3; i++) {
	    wait(0);
	}
        printf(1,"\n if processes with highest priority finished first then its correct \n");
    }
    exit(0);		
    return 0;
}

int donate(void){
    int pid;
    int j, k;

    pid = fork();
    
    if(pid == 0){
        //child process has lower priority but will have higher priority with aging
        setpriority(20);
    } else {
        //parent process has higher priority but will have lower priority with aging
        setpriority(5);
    }

    printf(1, "\n 1: process %d with priority %d \n",getpid(), getpriority());

    if(pid > 0){
        //paremt process donates priority to child
        donatepriority(pid);
        printf(1, "\n \t parent process donated priority of %d \n", getpriority());
    }

    printf(1, "\n 2: new process priority %d with priority %d \n",getpid(), getpriority());

    for (j=0;j<50000;j++) {
        for(k=0;k<1000;k++) {
            asm("nop");
        }
    }

    printf(1, "\n 3: process %d with priority %d has finished! \n",getpid(), getpriority());

    wait(0);
    exit(0);

    return 0;      

}


int agetest(void){

    // use this part to test the priority scheduler. Assuming that the priorities range between range between 0 to 31
    // 0 is the highest priority and 31 is the lowest priority.

    int pid;
    int i,j,k;
    int priority[] = {10, 10, 8};

    printf(1, "\n  Step 2: testing the priority scheduler and setpriority(int priority)) systema call:\n");
    printf(1, "\n  Step 2: Assuming that the priorities range between range between 0 to 31\n");
    printf(1, "\n  Step 2: 0 is the highest priority. All processes have a default priority of 10\n");
    printf(1, "\n  Step 2: The parent processes will switch to priority 0\n");
    setpriority(0);
    for (i = 0; i <  3; i++) {
        pid = fork();
        if (pid > 0 ) {
                continue;
        }
        else if ( pid == 0) {
		printf(1, "\n \t current process %d priority %d \n ", getpid(), getpriority());
                setpriority(priority[i]);
		printf(1, "\n \t current process %d priority %d \n ", getpid(), getpriority());
                for (j=0;j<50000;j++) {
                        for(k=0;k<1000;k++) {
                                asm("nop");
                        }
                }
		printf(1, "\n \t current process %d priority %d \n ", getpid(), getpriority());
                printf(1, "\n child# %d with priority %d has finished! \n",getpid(),priority[i]);
                exit(0);
        } else {
            printf(2," \n Error \n");
        }
    }

    if(pid > 0) {
        for (i = 0; i <  3; i++) {
            wait(0);
        }
        printf(1,"\n if processes with highest priority finished first then its correct \n");
    }
    exit(0);
    return 0;
}


int testdefault(void){
    int pid;
    pid = fork();
    printf(1, "\n current process %d priority %d \n ", getpid(), getpriority());
    if(pid > 0) wait(0);
    exit(0);
    return 0;
}
