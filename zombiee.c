#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main(){
	pid_t id=fork();
	if(id==0){
		printf("Child has started with pid: %d\n", getpid());
		printf("Parent process id: %d\n", getppid());
		printf("Sleep while parent gets killed\n");
		sleep(5);
		printf("Child killed\n");
		printf("Child process id: %d\n", getpid());
	}	
	else{
		printf("Parent pid: %d\n", getpid());
		printf("Sleep while child gets killed\n");
		sleep(10);
		printf("Parent is zombie now.\n");
	}
}
