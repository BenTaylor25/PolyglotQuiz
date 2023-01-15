# Polyglot Quiz
Simple Quiz program in several different languages.  
Questions will be related to the given language (e.g. What year was \<language\> released?).

## Pseudocode
```
func main() {
	const questions = [
		{ 'q': "question 1", 'a': "answer 1" },
		{ 'q': "question 2", 'a': "answer 2" },
		...
	]

	var incorrectGuesses = 0

	foreach question in questions {
		println(question['q'])

		var guess = ""
		while guess != question['a'] && guess != "skip" {
			print("> ")
			guess = input()

			if guess == "skip" {
				incorrectGuesses += 10
				println(question['a'])
				println()
			} else if guess != question['a'] {
				incorrectGuesses++
			} else {
				println("correct")
				println()
			}
		}
	}

	println("Incorrect Guesses: " + toString(incorrect Guesses))
}

main()
```

Many languages do not require a main function to execute.  
In such languages I have used a function called main anyway
to explore function syntax in the given language.  
In a similar vein, most languages do not require explicit
integer->string conversion in order to output int values,
but I have chosen to include it to explore how the language
uses type conversion.

### Done
- Python
- Dart
- Ruby
- Lua
- C#
- Java
- C
- Rust
- Go
- Kotlin
- C++
- JavaScript
- TypeScript
- Swift
- Fuze4NS

### To Do
- Objective-C
- Visual Basic
