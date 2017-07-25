package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"time"
)

func main() {
	result := 0

	reader := bufio.NewReader(os.Stdin)
	fmt.Print("Enter Rom Num:")
	r, _ := reader.ReadString('\n')
	rn := strings.TrimSpace(r)

	start := time.Now()

	dec := make([]int, 13)
	dec = []int{1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1}
	rom := make([]string, 13)
	rom = []string{"M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"}

	for i, _ := range dec {
		for strings.Index(rn, rom[i]) == 0 {
			result += dec[i]

			rn = strings.Replace(rn, rom[i], "", 1)
		}
	}
	elapsed := time.Since(start)
	fmt.Println("To decimal:", result, "\nTime elapsed:", elapsed)
}
