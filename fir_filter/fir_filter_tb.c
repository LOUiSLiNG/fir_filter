#include <stdlib.h>
#include <stdio.h>
#include "fir_filter.h"
#include <math.h>
#define N 10
int main() {
//	int in[N] = {0, 13, 50, 100, 250, 45, 56, -22, 0, -11};
	int in[N];
	int out[N];
	for(int i = 0; i < 1; i++){
		for(int j = 0; j < N; j++) {
			in[j] = rand() % 50;
		}
		fir(in, out);
	}
//	fir(in, out);
}	
