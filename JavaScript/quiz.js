
const prompt = require('prompt-sync')({sigint: true});

function main() {
    const questions = [
        {"q": "q1", "a": "a1"},
        {"q": "q2", "a": "a2"},
    ];

    let incorrectGuesses = 0;

    questions.forEach(question => {
        console.log(question.q);

        let guess = "";
        while (guess != question.a && guess != "skip") {
            guess = prompt("> ");

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

    console.log("Incorrect Guesses: " + incorrectGuesses);
}
main();
