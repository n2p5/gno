package main

import "fmt"

func main() {
	x := 1.0
	y := ^x
	fmt.Println(y) // Output will be the bitwise complement of 1
}

// Error:
// main/files/types/unary_a6.gno:7:7: operator ^ not defined on: Float64Kind

// TypeCheckError:
// main/files/types/unary_a6.gno:7:8: invalid operation: operator ^ not defined on x (variable of type float64)
