#include "stdio.h"
#include "Windows.h"

void __stdcall func_c(int i1, int i2, int i3, float f1, float f2, float f3) {
	printf("ints:\n");
	printf("\t%d; %d; %d\n", i1, i2, i3);

	printf("floats:\n");
	printf("\t%f; %f; %f\n", f1, f2, f3);

	printf("int sum : %d\n", i1 + i2 + i3);
	printf("float sum : %f\n", f1 + f2 + f3);
}

extern int __fastcall func_asm(int i1, int i2, int i3, float f1, float f2, float f3);

int main() {
	func_asm(1, 2, 3, 1.11, 2.22, 3.33);
	return 0;
}