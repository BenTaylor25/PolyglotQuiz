
function main()
    local questions = {
        {
            q = "In what year was Lua released?", 
            a = "1993"
        }, {
            q = "What group created Lua?", 
            a = "Tecgraf"
        }, {
            q = "How many reserved keywords does Lua have?", 
            a="21"
        }, {
            q = "How do you denote a sigle line comment in Lua?", 
            a="--"
        }, {
            q = "What is the standard typing style for Variables in Lua?", 
            a="snake_case"
        }
    }

    local incorrect_guesses = 0

    for _, question in pairs(questions) do
        print(question['q'])

        local guess = ""
        while guess ~= question['a'] and guess ~= "skip" do
            io.write("> ")
            guess = io.read("*l")

            if guess == "skip" then
                incorrect_guesses = incorrect_guesses + 10
                print()
            elseif guess ~= question['a'] then
                incorrect_guesses = incorrect_guesses + 1
            else
                print "Correct"
                print()
            end
        end
    end

    print("Incorrect Guesses: " .. tostring(incorrect_guesses))
end
main()
