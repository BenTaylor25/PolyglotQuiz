#include <iostream>
#include <string>

using std::cout;
using std::endl;
using std::string;

class QuestionAnswer {
public:
    string q;
    string a;

    QuestionAnswer(string question, string answer) {
        q = question;
        a = answer;
    }
};

int main() {
    QuestionAnswer questions[] = {
        {"In what year was C++ released?", "1985"},
        {"Who was the lead designer of C++?", "Bjarne Stroustrup"},
        {"How many reserved keywords does C++ have?", "95"},
        {"What is the standard typing style for variables in C++?", "snake_case"},
    };

    int incorrect_guesses = 0;

    for (auto question : questions) {
        cout << question.q << endl;

        string guess;
        while (guess != question.a && guess != "skip") {
            cout << "> ";
            getline(std::cin, guess);

            if (guess == "skip") {
                incorrect_guesses += 10;
                cout << question.a << endl << endl;
            } else if (guess != question.a) {
                incorrect_guesses++;
            } else {
                cout << "Correct" << endl << endl;
            }
        }
    }

    cout << "Incorrect Guesses: " << incorrect_guesses << endl;
}
