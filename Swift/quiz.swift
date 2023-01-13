
struct QuestionAnswer {
    var q = ""
    var a = ""
}

func main() {
    let questions = [
        QuestionAnswer(q: "In what year was Swift first released?", a: "2014"),
        QuestionAnswer(q: "Which individual is credited with the creation of Swift?", a: "Chris Lattner"),
        QuestionAnswer(q: "What organisation is responsible for Swift?", a: "Apple"),
        QuestionAnswer(q: "What language was Swift intended to replace?", a: "Objective-C"),
    ]

    var incorrectGuesses = 0

    questions.forEach { question in
        print(question.q)

        var guess = ""
        while guess != question.a && guess != "skip" {
            print("> ", terminator: "")
            guess = readLine() ?? ""

            if guess == "skip" {
                incorrectGuesses += 10
                print(question.a)
                print()
            } else if guess != question.a {
                incorrectGuesses += 1
            } else {
                print("Correct")
                print()
            }
        }
    }

    print("Incorrect Guesses: " + String(incorrectGuesses))
}
main()
