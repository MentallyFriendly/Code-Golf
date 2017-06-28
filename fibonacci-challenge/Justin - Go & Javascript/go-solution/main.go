package main

import (
	"fmt"
	"log"
	"math/big"
	"time"
)

func fibCheck(num string) bool {
	fibs := make([]*big.Int, 0, 100)

	numToBigInt := new(big.Int)
	numToBigInt.SetString(num, 10)

	num1 := new(big.Int)
	num1.SetString("0", 10)

	num2 := new(big.Int)
	num2.SetString("1", 10)

	fibs = append(fibs, num1, num2)

	for {

		fibLast := fibs[len(fibs)-1]
		fibSecondLast := fibs[len(fibs)-2]

		if fibLast.Cmp(numToBigInt) >= 0 {
			break
		} else {

			nextNum := new(big.Int)
			nextNum.Add(fibLast, fibSecondLast)

			fibs = append(fibs, nextNum)
		}
	}

	// fmt.Println("fibs slice", fibs)
	// fmt.Println("fibs length", len(fibs))

	for _, v := range fibs {
		if v.Cmp(numToBigInt) == 0 {
			fmt.Println("=========\n", "Yess!!")
			return true
		}
	}
	fmt.Println("Noooo :(")
	return false
}

func main() {

	start := time.Now()

	fibCheck("176023680645013966468226945392411250770384383304492191886725992896575345044216019675")

	elapsed := time.Since(start)

	log.Printf("Time elapsed: %s\n", elapsed)
}
