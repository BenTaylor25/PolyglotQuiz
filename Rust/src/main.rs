use std::io::{self, stdin, Write};

struct QuestionAnswer {
    pub q: String,
    pub a: String
}

fn main() {
    let questions = [
        QuestionAnswer { q: "When was the Rust project first started?".to_string(), a: "2006".to_string() },
        QuestionAnswer { q: "When was Rust officially announced?".to_string(), a: "2010".to_string() },
        QuestionAnswer { q: "Who was the lead designer of Rust?".to_string(), a: "Graydon Hoare".to_string() },
        QuestionAnswer { 
            q: "What is the standard typing style for variables in Rust".to_string(),
            a: "snake_case".to_string()
        },
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
