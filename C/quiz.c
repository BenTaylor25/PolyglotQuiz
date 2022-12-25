#include <stdio.h>
#include <string.h>

typedef struct {
    char *q;
    char *a;
} question_answer;

int main() {
    question_answer questions[] = {
        {"q1", "a1"},
        {"q2", "a2"},
    };

    int incorrect_guesses = 0;

    for (int i = 0; i < sizeof(questions)/sizeof(questions[0]); i++) {
        printf("%s\n", (*(questions+i)).q);

        char guess[50] = "";
        while (strcmp(guess, (*(questions+i)).a) != 0 && strcmp(guess, "skip") != 0) {
            printf("> ");
            fgets(guess, 50, stdin);
            guess[strcspn(guess, "\n")] = 0;

            if (strcmp(guess, "skip") == 0) {
                incorrect_guesses += 10;
                printf("%s\n\n", (*(questions+i)).a);
            } else if (strcmp(guess, (*(questions+i)).a)) {
                incorrect_guesses++;
            } else {
                printf("correct\n\n");
            }
        }
    }

    printf("Incorrect Guesses: %d\n", incorrect_guesses);
}

