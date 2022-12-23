# Polyglot Quiz
Simple Quiz program in several different languages.  
Questions will be related to the given language (e.g. What year was <language> released?).

## Pseudocode
```
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
		guess = input("> ")

		if guess == "skip" {
			incorrectGuesses += 10
		} else if guess != question['a'] {
			incorrectGuesses++
		}
	}
}

println("Incorrect Guesses: " + toString(incorrect Guesses))
```



