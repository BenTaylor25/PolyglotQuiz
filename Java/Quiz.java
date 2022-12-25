import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

class QuestionAnswer {
    public String q;
    public String a;

    public QuestionAnswer(String question, String answer) {
        q = question;
        a = answer;
    }
}

public class Quiz {
    public static void main(String[] args) throws IOException {
        QuestionAnswer[] questions = new QuestionAnswer[] {
            new QuestionAnswer("q1", "a1"),
            new QuestionAnswer("q2", "a2"),
        };

        int incorrectGuesses = 0;
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

        for (QuestionAnswer question : questions) {
            System.out.println(question.q);

            String guess = "";
            while (!guess.equals(question.a) && !guess.equals("skip")) {
                System.out.print("> ");
                guess = reader.readLine();

                if (guess.equals("skip")) {
                    incorrectGuesses += 10;
                    System.out.println(question.a);
                    System.out.println();
                } else if (!guess.equals(question.a)) {
                    incorrectGuesses++;
                } else {
                    System.out.println("Correct");
                    System.out.println();
                }
            }
        }

        System.out.println("Incorrect Guesses: " + Integer.toString(incorrectGuesses));
    }
}
