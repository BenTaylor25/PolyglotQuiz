
const prompt = require('prompt-sync')({sigint: true});

function main() {
    const questions = [
        {"q": "In what year was JavaScript first released?", "a": "1995"},
        {"q": "Who was the lead designer of JavaScript?", "a": "Brenden Eich"},
        {"q": "How long did it take to develop the first version of JavaScript?", "a": "10 days"},
        {"q": "What is the most common backend runtime for JavaScript?", "a": "node"},
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

    console.log("Incorrect Guesses: " + incorrectGuesses.toString());
}
main();
