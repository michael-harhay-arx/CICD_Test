// Main file

#include <UnitTests.h>

int main() {
	
	if (UnitTest_XNonZero ()) {
		printf("Failed.");
		return 1;
	}
   	
	
    printf("All tests passed.\n");
    return 0;
}