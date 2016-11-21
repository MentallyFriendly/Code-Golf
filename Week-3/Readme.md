# Code Golf - Challenge 3

## Prime Numbers

Using the language of your choice, return a boolean if a given integer is a prime number (`true`) or not (`false`).

fn isPrime(number) => boolean

### Rules

- Computation must be done by the system that is running the program(s).
- Computation must be done in real time. The use of pregenerated numbers is not allowed. An example of this would be that a list of prime numbers or a list of numbers that aren't prime numbers are not permitted to be compared against.

### Judging criteria

- The primary criteria is speed.
Similar to golfing using characters in our previous challenges, we will be golfing speed of comupuation. Lower times to calculate are better here. The tests are provided below.
All tests will be run on the same computer to reduce the number of possible factors which will have an affect on the outcome.

- Elegance of code
Readability are highly recommended as this code will be used for the follow up challenge.
Clever tricks or other interesting uses of your chosen language's features will be viewed upon favourably.

- *BONUS POINT* - The largest prime known to man
According to Wikipedia M74207281 is the largest prime number currently known to man. Bonus points to those that can return the correct result faster than the tech team meeting.

- Expected output
Since we're primarily judging on speed reducing the number of dependencies is a good idea. For that reason simply outputting the result in plain text is all that is required.
`true`, `false`, `0` and `1` are all acceptable output.
Unit tests are not required in the final output (although it is recommended for development).


### List of prime numbers
For a [list of prime numbers see the article on wikipedia](https://en.wikipedia.org/wiki/Largest_known_prime_number).

### Communicating Prime Numbers

Prime numbers can be written as a [Mersenne prime](https://en.wikipedia.org/wiki/Mersenne_prime).

![screen shot 2016-11-21 at 2 45 51 pm](https://cloud.githubusercontent.com/assets/133069/20470085/5749a4ec-aff9-11e6-8071-9354212c992d.png)

Due to the limitation of Github's Markdown, this will be written as Mnumber (e.g. M127) in all further cases.

### Example code

#### Generating a prime number

```javascript
function generatePrime(num) {
    return Math.pow(2, num) - 1;
}
```

#### Determining if a given number is a Prime Number

Below is an starting point that can be used to determine if a number is a prime or not. This is not an optimal version.

```javascript
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
```

### Tests

isPrime(0) => false // Note - This will fail in the example above

isPrime(1) => false // Note - This will fail in the example above

isPrime(11) => true

isPrime(24) => false

isPrime(M17) => true

isPrime(M31) => true

isPrime(M31 + M17) => false

isPrime(M22) => false


As a base line, the following is a test on a single core of Sasha's MacBook Pro 2014. Time is in seconds.

```
> time node basic-sample.js
true
true
false
false
       15.74 real        15.69 user         0.02 sys
```
