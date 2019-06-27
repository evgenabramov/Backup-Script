code = r'''
#include <iostream>
void foo() {
	std::cout << "foo() from index.h" << std::endl;
}
'''

header="index.h"
with open(header, "w") as FOUT:
	FOUT.write(code)

