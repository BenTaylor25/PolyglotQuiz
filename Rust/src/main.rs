use std::io::{self, stdin, Write};

struct QuestionAnswer {
    pub q: String,
    pub a: String
}

fn main() {
    let questions = [
        QuestionAnswer { q: "q1".to_string(), a: "a1".to_string() },
        QuestionAnswer { q: "q2".to_string(), a: "a2".to_string() },
    ];

    let mut incorrect_guesses = 0;

    for question in questions {
        println!("{}", question.q);

        let mut guess = "".to_string();

        while guess.trim() != "skip" && guess.trim() != question.a {
            print!("> ");
            io::stdout().flush().unwrap();
            guess.clear();
            stdin().read_line(&mut guess)
                .ok()
                .expect("Failed to read input");

            if guess.trim() == "skip" {
                incorrect_guesses += 10;
                println!("{}\n", question.a);
            } else if guess.trim() != question.a {
                incorrect_guesses += 1;
            } else {
                println!("Correct\n");
            }
        }
    }

    println!("Incorrect Guesses: {}", incorrect_guesses);
}
