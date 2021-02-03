#include "fir_filter2.h"
#define N 11
#define SIZE 128

//void fir(int *y, int x) {
int fir1(int x) {
	int C[N] = {53, 0, -91, 0, 313, 500, 313, 0, -91, 0, 53};
	int Xreg;
		
	static int shift_reg[N];
	
	int acc, i, j;
	acc = 0;	
	for(i = N - 1; i > 0; i--) {
		shift_reg[i] = shift_reg[i - 1];
		acc += shift_reg[i -1] * C[i];
	}
	acc += x * C[0];
	shift_reg[0] = x;
	
//	*y = acc;
//	acc = C[0]; 
	return acc;
}
