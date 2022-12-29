
data class QuestionAnswer (
    val q: String,
    val a: String
)

fun main() {

    var question = arrayOf(
        QuestionAnswer("q1", "a1"),
        QuestionAnswer("q2", "a2")
    );


    println(question[0].q)
}