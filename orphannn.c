 4#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main(){
	pid_t id=fork();
	if(id==0){
		printf("Child has started with pid: %d\n", getpid());
		printf("Parent process id: %d\n", getppid());
		printf("I will be Sleeping Now while the Parent gets Killed...\n");
		sleep(10);
		printf("Child is orphan now\n");

	}
	else{
		printf("Parent pid: %d\n", getpid());
		sleep(5);
		printf("Parent killed\n");
	}
}
