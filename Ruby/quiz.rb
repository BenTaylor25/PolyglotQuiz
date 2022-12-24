
def main()
    questions = [
        {'q' => "q1", 'a' => "a1"},
        {'q' => "q2", 'a' => "a2"},
    ]

    incorrect_guesses = 0

    for question in questions do
        puts(question['q'])

        guess = ""
        until guess == question['a'] || guess == "skip" do
            print "> "
            guess = gets.chomp

            if guess == "skip" then
                incorrect_guesses += 10
            elsif guess != question['a'] then
                incorrect_guesses += 1
            end
        end
    end

    puts "Incorrect Guesses: " + incorrect_guesses.to_s
end
main
