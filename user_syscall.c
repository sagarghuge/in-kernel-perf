#include<linux/kernel.h>
#include<unistd.h>
#include<stdio.h>
#include<stdlib.h>
#include<sys/time.h>
#include<sys/syscall.h>

int main()
{
	int i=0;
	struct timeval t0,t1;
	int ret;
	double diff;
	ret=gettimeofday(&t0,NULL);
	i = syscall(377);
	ret=gettimeofday(&t1,NULL);
	diff=(t1.tv_sec - t0.tv_sec)*1000 + (t1.tv_usec - t0.tv_usec)/1000.0;
	printf("%10.5f msec\n",diff);
	return 0;
}
