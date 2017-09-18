#include<iostream>

using namespace std;

bool isFibonacci(unsigned long long int number) {
    int first = 0, second = 1, next = 0;

    while (number > next) {
        next = first + second;
        first = second;
        second = next;

        if (number == next) {
            return true;
        }
    }

    return false;
}

int main() {
	unsigned long long int number = 0;

	cout << "Please enter a number: ";
	cin >> number;

	if (isFibonacci(number)) {
		cout << "It is a fibonacci number!";
	} else {
		cout << "Not a fibonacci number :-(";
	}

    return 0;
}
