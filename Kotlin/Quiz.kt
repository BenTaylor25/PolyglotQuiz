import java.util.*

data class QuestionAnswer (
    val q: String,
    val a: String
)

fun main() {

    var questions = arrayOf(
        QuestionAnswer("In what year was Kotlin first released?", "2011"),
        QuestionAnswer("In what year was Kotlin 1.0 released?", "2016"),
        QuestionAnswer("What organisation is responsible for Kotlin?", "JetBrains"),
        QuestionAnswer("Who was the lead designer of Kotlin?", "Andrey Breslav"),
        QuestionAnswer("What language was Kotlin intended to be 'better than'?", "Java")
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