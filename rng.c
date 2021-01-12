#include <stdio.h>

extern long mysrand(long);
extern long myrand();

int main(){
	long seed;
	int i;
	scanf("%ld",&seed);
	seed=mysrand(seed);
	printf("%ld\n", seed);
	for(i=0;i<20;i++)
		printf("%ld\t",myrand());
	printf("\n");
	return 0;
}
