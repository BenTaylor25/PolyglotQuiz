package main

import "fmt"

func main() {
	var questions []map[string]string

	questions = append(questions, make(map[string]string))
	questions[0]["q"] = "q1"
	questions[0]["a"] = "a1"

	fmt.Println(questions[0]["q"])

}