const consoleInput = require('prompt-sync')({sigint: true});

type QuestionAnswer = {
    q: string,
    a: string
}

function main() {
    const questions: QuestionAnswer[] = [
        {q: "In what year was TypeScript first released?", a: "2012"},
        {q: "In what year was TypeScript 1.0 released?", a: "2014"},
        {q: "What organisation is responsible for TypeScript?", a: "Microsoft"},
        {q: "What is the primary feature that TypeScript adds?", a: "static typing"},
        {q: "Who was the lead designer of TypeScript?", a: "Anders Hejlsberg"},
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
