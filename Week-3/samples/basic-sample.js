function generatePrime(num) {
    return Math.pow(2, num) - 1;
}

function isPrime(num) {
    var isPrime = true;

    for(var i = num - 1; i > 1; i--) {
        if(num % i === 0) {
            isPrime = false;
            break;
        }

    }

    return isPrime;
}


console.log(isPrime(generatePrime(17)));
console.log(isPrime(generatePrime(31)));
console.log(isPrime(generatePrime(31) + generatePrime(17)));
console.log(isPrime(generatePrime(22)));
