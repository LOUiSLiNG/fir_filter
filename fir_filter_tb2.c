#include <stdlib.h>
#include <stdio.h>
#include "fir_filter2.h"
#include "catapult_pqc_defines.h"
#include "mc_scverify.h"
#include <math.h>
#define N 10


PQC_MAIN(int argc, char *argv[]) {
//int main(int argc, char *argv[]) {
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
	int shift_reg1[N], shift_reg2[N], shift_reg3[N];
	int out2, out3;
	for(j = 0; j < N; j++) {
		//out1 = fir1(in2[j]);
		out1 = PQC_KEYPAIR(fir1)(in2[j]);
		out2 = PQC_ENCRYPTION(fir2)(in2[j]);
		out3 = PQC_DECRYPTION(fir3)(in2[j]);
		if(out1 != out2) {
		    printf("Error in the code: %d != %d\n", out1, out2);
		    PQC_RETURN(-1);
		}
	}
	PQC_RETURN(0);
}
