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
            new QuestionAnswer("In what year was Java first released?", "1995"),
            new QuestionAnswer("In what year was Java 1.0 released?", "1996"),
            new QuestionAnswer("Who was the lead designer of Java?", "James Gosling"),
            new QuestionAnswer("How many reserved keywords does Java have?", "67"),
            new QuestionAnswer("What is the standard typing style for local variables in Java?", "camelCase"),
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
