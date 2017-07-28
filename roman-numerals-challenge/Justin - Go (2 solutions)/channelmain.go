package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
	"time"
)

func main() {

	reader := bufio.NewReader(os.Stdin)
	fmt.Print("Enter Rom Num:")
	r, _ := reader.ReadString('\n')
	rn := strings.TrimSpace(r)

	start := time.Now()

	c1 := romanChannel(rn)
	for n := range c1 {
		fmt.Println("Value is:", n)
	}

	elapsed := time.Since(start)
	fmt.Println(elapsed)
}

func romanChannel(rn string) chan int {
	var numSlice []string
	sum := 0

	out := make(chan int)
	go func() {
		if len(rn) <= 1 {
			getLastVal(rn)
		} else {
			numSlice = strings.Split(rn, "")
			numSliceLength := len(numSlice)

			for i, val := range numSlice {
				switch {
				case i == numSliceLength-1:
					sum += getLastVal(val)
				case val == "I":
					sum += checkIVal(numSlice[i], numSlice[i+1])
				case val == "V":
					sum += checkVVal(numSlice[i], numSlice[i+1])
				case val == "X":
					sum += checkXVal(numSlice[i], numSlice[i+1])
				case val == "L":
					sum += checkLVal(numSlice[i], numSlice[i+1])
				case val == "C":
					sum += checkCVal(numSlice[i], numSlice[i+1])
				case val == "D":
					sum += checkDVal(numSlice[i], numSlice[i+1])
				case val == "M":
					var num int
					num, _ = strconv.Atoi("+1000")
					sum += num
				}
			}
		}
		out <- sum
		close(out)
	}()
	return out
}

func getLastVal(n1 string) int {
	var num int
	switch n1 {
	case "I":
		num, _ = strconv.Atoi("+1")
	case "V":
		num, _ = strconv.Atoi("+5")
	case "X":
		num, _ = strconv.Atoi("+10")
	case "L":
		num, _ = strconv.Atoi("+50")
	case "C":
		num, _ = strconv.Atoi("+100")
	case "D":
		num, _ = strconv.Atoi("+500")
	case "M":
		num, _ = strconv.Atoi("+1000")
	}
	return num
}

func checkIVal(n1, n2 string) int {
	var num int
	switch n2 {
	case "I":
		num, _ = strconv.Atoi("+1")
	default:
		num, _ = strconv.Atoi("-1")
	}
	return num
}

func checkVVal(n1, n2 string) int {
	var num int
	switch n2 {
	case "I", "V":
		num, _ = strconv.Atoi("+5")
	default:
		num, _ = strconv.Atoi("-5")
	}
	return num
}

func checkXVal(n1, n2 string) int {
	var num int
	switch n2 {
	case "I", "V", "X":
		num, _ = strconv.Atoi("+10")
	default:
		num, _ = strconv.Atoi("-10")
	}
	return num
}

func checkLVal(n1, n2 string) int {
	var num int
	switch n2 {
	case "C", "M":
		num, _ = strconv.Atoi("-50")
	default:
		num, _ = strconv.Atoi("+50")
	}
	return num
}

func checkCVal(n1, n2 string) int {
	var num int
	switch n2 {
	case "M", "D":
		num, _ = strconv.Atoi("-100")
	default:
		num, _ = strconv.Atoi("+100")
	}
	return num
}

func checkDVal(n1, n2 string) int {
	var num int
	switch n2 {
	case "M":
		num, _ = strconv.Atoi("-500")
	default:
		num, _ = strconv.Atoi("+500")
	}
	return num
}
