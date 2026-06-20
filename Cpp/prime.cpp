#include <iostream>
using namespace std;

bool simple_primality(int pot) {
	for ( int i = 2; i < 6; i ++) if (pot % i == 0) return false;
		
	int k = 5;
	while (k * k < pot) {
		if ( pot % k == 0 ) return false;
		k += 6;
	}


	return true;
}

int main(int argc, char* argv[]) {
	cout << "THIS SYSTEM IS NAIVE AND SIMPLE, WILL NOT WORK FOR VERY LARGE NUMBERS AND MAY OUTPUT INCORRECT VERDICT" << "\n";
	cout << "\n" <<  "Verdict is:" << "\n";
	if (simple_primality(atoi(argv[1])) == 1) cout << argv[1] << " is prime";
	else cout << argv[1] << " is composite";
	return 0;
}

