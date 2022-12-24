
function main()
    local questions = {
        {q = "q1", a = "a1"},
        {q = "q2", a = "a2"}
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
            elseif guess ~= question['a'] then
                incorrect_guesses = incorrect_guesses + 1
            end
        end
    end

    print("Incorrect Guesses: " .. tostring(incorrect_guesses))
end
main()
