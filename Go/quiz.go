package main

import (
	"fmt"
	"bufio"
	"os"
	"strings"
)

func main() {
	var questions []map[string]string

	questions = append(questions, map[string]string { "q": "q1", "a": "a1" })
	questions = append(questions, map[string]string { "q": "q2", "a": "a2" })

	incorrectGuesses := 0

	for _, question := range questions {
		fmt.Println(question["q"])

		guess := ""
		reader := bufio.NewReader(os.Stdin)
		for guess != question["a"] && guess != "skip" {
			fmt.Print("> ")
			guess, _ = reader.ReadString('\n')
			guess = strings.Replace(guess, "\n", "", -1)

			if guess == "skip" {
				incorrectGuesses += 10
				fmt.Println(question["a"])
				fmt.Println()
			} else if guess != question["a"] {
				incorrectGuesses++
			} else {
				fmt.Println("Correct")
				fmt.Println()
			}
		}

	}

	fmt.Println(incorrectGuesses)

}