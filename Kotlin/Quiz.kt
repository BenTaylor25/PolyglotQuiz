import java.util.*

data class QuestionAnswer (
    val q: String,
    val a: String
)

fun main() {

    var questions = arrayOf(
        QuestionAnswer("q1", "a1"),
        QuestionAnswer("q2", "a2")
    );

    var incorrectGuesses = 0

    for (question in questions) {
        println(question.q)

        var guess = ""
        while (guess != question.a && guess != "skip") {
            print("> ")
            guess = readLine()!!

            if (guess == "skip") {
                incorrectGuesses += 10
                println(question.a)
                println()
            } else if (guess != question.a) {
                incorrectGuesses++
            } else {
                println("Correct")
                println()
            }
        }
    }

    println("Incorrect Guesses: " + incorrectGuesses.toString())
}