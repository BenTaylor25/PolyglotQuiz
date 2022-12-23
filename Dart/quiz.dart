import 'dart:io';

void main() {
  var questions = [
    {'q': "q1", 'a': "a1"},
    {'q': "q2", 'a': "a2"},
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
      } else if (guess != question['a']) {
        incorrectGuesses++;
      } else {
        print("Correct\n");
      }
    }
  });

  print("Incorrect Guesses: " + incorrectGuesses.toString());
}
