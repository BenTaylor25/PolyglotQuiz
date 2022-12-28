package main

import (
	"fmt"
	"bufio"
	"os"
	"strings"
)

func main() {
	var questions []map[string]string

	questions = append(questions, map[string]string { "q": "In what year was the Go project first started?", "a": "2007" })
	questions = append(questions, map[string]string { "q": "In what year was Go 1.0 released?", "a": "2009" })
	questions = append(questions, map[string]string { "q": "What organisation created Go?", "a": "Google" })
	questions = append(questions, map[string]string { "q": "Go was primarily created because people didn't like which language?", "a": "C++" })
	questions = append(questions, map[string]string { "q": "What famous development container program was written in Go?", "a": "Docker" })

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