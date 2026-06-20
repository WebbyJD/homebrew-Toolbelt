#include <iostream>
using namespace std;


float deep(int lonu, int num) { // Little over num	
	float i = static_cast< float >(lonu);
	for (int k = 1; k < 10; k ++){ 
		float tem = i + (static_cast< float >(k))/10;
		for (int h = 1; h < 10; h ++) {
			tem = tem + (static_cast< float >(h))/ 100;
			if ( static_cast< int >(tem * tem) == num) return tem;
		}
	}
	
	return lonu;
}

int main(int argc, char* argv[]){
	int num = atoi(argv[1]);
	for (int i = 2; i < num; i ++) {
		if (i * i == num){
			cout << "The square root of " << num << " is " << i;
			return 0;
		}
		if (i * i > num) {
			cout << "The square root of " << num << " is around " << deep(i - 1, num);
			return 0;
		}
		
	}
	cout << "Could not find square root of " << num;

	return 0;
}

