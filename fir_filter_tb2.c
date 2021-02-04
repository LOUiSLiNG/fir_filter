#include <stdlib.h>
#include <stdio.h>
#include "fir_filter2.h"
#include "mc_scverify.h"
#include <math.h>
#define N 10

CCS_MAIN(int argc, char *argv[]) {
//int main() {
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
		//out1 = fir1(in2[j]);
		out1 = CCS_DESIGN(fir1)(in2[j]);
		out2 = fir2(in2[j]);
		if(out1 != out2) {
		    printf("Error in the code: %d != %d\n", out1, out2);
		    return -1;
		}
	}
	return 0;
}	          
                  
                  
                
