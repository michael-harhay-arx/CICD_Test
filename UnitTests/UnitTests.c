// Tests

#include <UnitTests.h>

// Pass if x is nonzero
int UnitTest_XNonZero () {
	
	// Fail if X is zero
	if (TestStep_SetX (1) == 0) {
		return 1;
	}
	
	return 0;
}