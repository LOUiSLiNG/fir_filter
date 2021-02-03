#include <stdlib.h>
#include <stdio.h>
#include "fir_filter2.h"
#include <math.h>
#define N 10
int main() {
//	int in[N] = {0, 13, 50, 100, 250, 45, 56, -22, 0, -11};
//	int in[N];
//	int out[N];
	int i,j;
//	for(i = 0; i < 1; i++){
//		for(j = 0; j < N; j++) {
//			in[j] = rand() % 50;
//		}
//		fir(out[i], in[i]);
//	}
//	fir(in, out);
	
//test2
//	int in[N];
	int out1;
//	fir(out, in);
		
//	for(i = 0; i < 5; i++){
//		for(j = 0; j < N; j++) {
//			in[j] = rand() % 50;
//		}
//		out = fir(in[i]);
//	}
	//out = fir(in);
//test3
	
	int in2[N] = {0, 13, 50, 100, 250, 45, 56, -22, 0, -11};
	int out2;
	for(j = 0; j < N; j++) {
		out1 = fir1(in2[N]);
		out2 = fir2(in2[N]);
	}
}	          
                  
                  
                
