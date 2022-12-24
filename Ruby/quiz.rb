
def main()
    questions = [
        {
            'q' => "In what year was Ruby first released?", 
            'a' => "1995"
        }, {
            'q' => "In what year was Ruby 1.0 released?",
            'a' => "1996"
        },{
            'q' => "Who is the creator of Ruby?", 
            'a' => "Yukihiro Matsumoto"
        }, {
            'q' => "What framework helped Ruby become successful?",
            'a' => "Ruby on Rails"
        }, {
            'q' => "What is the standard typing style for variables in Ruby?",
            'a' => "snake_case"
        }
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
                puts
            elsif guess != question['a'] then
                incorrect_guesses += 1
            else
                puts "Correct"
                puts
            end
        end
    end

    puts "Incorrect Guesses: " + incorrect_guesses.to_s
end
main
