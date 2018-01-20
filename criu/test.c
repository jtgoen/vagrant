#include <stdio.h>
#include <unistd.h>

int main() {
	unsigned long i = 0;
	while(1) {
		printf("Iteration %u.\n", i++);
		sleep(1);
	}
	return 0;
}
