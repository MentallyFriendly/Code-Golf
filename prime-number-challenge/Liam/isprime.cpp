#include <iostream>

using namespace std;

bool isPrime(unsigned long long int number) {
    if (number < 2) {
    	return false;
    }
    
    if (number == 2) {
    	return true;
    }
    
    if (number % 2 == 0) {
    	return false;
    }

    for (int i = 3; (i * i) <= number; i += 2) {
        if (number % i == 0) {
        	return false;
        }
    }

    return true;
}

int main() {
	unsigned long long int number = 0;

	cout << "Please enter a positive integer: ";
	cin >> number;

	if (isPrime(number)) {
		cout << "The number is a prime!";
	} else {
		cout << "Not a prime :-(";
	}
}
