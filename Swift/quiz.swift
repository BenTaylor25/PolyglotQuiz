
struct QuestionAnswer {
    var q = ""
    var a = ""
}

func main() {
    let questions = [
        QuestionAnswer(q: "q1", a: "a1"),
        QuestionAnswer(q: "q2", a: "a2"),
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
