package com.michaelr

class Numbers {
  boolean isPrime(double number) {
    boolean prime = true

    if (number < 2 || number % 2 == 0 && number != 2) {
      prime = false
      return prime
    }

    for(def i = 3; i <= number; i++) {
      if (i > Math.sqrt(number)) {
        return prime
      }

      if (number % i == 0 && number != i) {
        prime = false
        return prime
      }
    }

    return prime
  }

  def generatePrime(int number) {
    return Math.pow(2, number) - 1
  }
}