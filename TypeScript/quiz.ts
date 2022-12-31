const consoleInput = require('prompt-sync')({sigint: true});

type QuestionAnswer = {
    q: string,
    a: string
}

function main() {
    const questions: QuestionAnswer[] = [
        {q: "q1", a: "a1"},
        {q: "q2", a: "a2"},
    ]

    let incorrectGuesses = 0;

    questions.forEach(question => {
        console.log(question.q);

        let guess = "";
        while (guess != question.a && guess != "skip") {
            guess = consoleInput("> ") ?? "";

            if (guess == "skip") {
                incorrectGuesses += 10;
                console.log(question.a);
                console.log();
            } else if (guess != question.a) {
                incorrectGuesses++;
            } else {
                console.log("Correct");
                console.log();
            }
        }
    });

    console.log("Incorrect Guesses: " + incorrectGuesses.toString())
}
main();
