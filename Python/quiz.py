
questions = [
    { 
        'q': "In what year was Python first released?", 
        'a': "1991"
    },
    {
        'q': "Who is the creator of Python?",
        'a': "Guido van Rossum"
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
