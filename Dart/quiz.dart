import 'dart:io';

void main() {
  var questions = [
    {'q': "In what year was Dart first released?", 'a': "2011"},
    {'q': "In what year was Dart 1.0 released?", 'a': "2013"},
    {'q': "Which organisation developed Dart?", 'a': "Google"},
    {'q': "What framework helped Dart become successful?", 'a': "Flutter"},
    {
      'q': "Who were the original project leads for Dart?",
      'a': "Lars Bak and Kasper Lund"
    },
    {
      'q': "What is the standard typing style for variables in Dart?",
      'a': "camelCase"
    },
  ];

  var incorrectGuesses = 0;

  questions.forEach((question) {
    print(question['q']);

    String? guess = "";
    while (guess != question['a'] && guess != "skip") {
      stdout.write("> ");
      guess = stdin.readLineSync();

      if (guess == "skip") {
        incorrectGuesses += 10;
        print("");
      } else if (guess != question['a']) {
        incorrectGuesses++;
      } else {
        print("Correct\n");
      }
    }
  });

  print("Incorrect Guesses: " + incorrectGuesses.toString());
}
