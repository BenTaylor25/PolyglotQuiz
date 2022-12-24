
def main():
    questions = [ 
        {
            'q': "In what year was Python 1.0 released?", 
            'a': "1991"
        }, {
            'q': "In what year was Python 2.0 released?",
            'a': "2000"
        }, {
            'q': "In what year was Python 3.0 released?",
            'a': "2008"
        }, {
            'q': "Who is the creator of Python?",
            'a': "Guido van Rossum"
        }, {
            'q': "What language was Python designed as a successor to?",
            'a': "ABC"
        }, {
            'q': "How many reserved keywords does Python have?",
            'a': "33"
        }, {
            'q': "How do you denote a single-line comment in Python?",
            'a': "#"
        }, {
            'q': "What is the standard typing style for variables in Python?",
            'a': "snake_case"
        }
    ]

    incorrect_guesses = 0

    for question in questions:
        print(question['q'])

        guess = ""
        while guess != question['a'] and guess != "skip":
            guess = input("> ")

            if guess == "skip":
                incorrect_guesses += 10
            elif guess != question['a']:
                incorrect_guesses += 1
            else:
                print("correct")
                print()

    print("Incorrect Guesses: " + str(incorrect_guesses))

if __name__ == "__main__":
    main()
