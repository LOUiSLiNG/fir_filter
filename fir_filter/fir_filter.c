#include <stdio.h>
#include <stdlib.h>	
	
#define SIZE 128
#define N 10
void fir(int input[SIZE], int output[SIZE]) {
// FIR coefficients
	int coeff[N] = {13, -2, 9, 11, 26, 18, 95, -43, 6, 74};
// Shift registers
	int shift_reg[N] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
// loop through each output
	int i,j,acc;
	
	for (i = 0; i < SIZE; i ++ ) { 
//		int acc = 0;
//// shift registers
//		for (int j = N - 1; j > 0; j--) { 
//			shift_reg[j] = shift_reg[j - 1];
//		}
//// put the new input value into the first register
//		shift_reg[0] = input[i];
//// do multiply-accumulate operation
//		for (int j = 0; j < N; j++) {
//			acc += shift_reg[j] * coeff[j];
//		}
		output[i] = input[i] * coeff[0]; 
	}
}
 
