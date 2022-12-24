
namespace PolyglotQuiz
{
    class QuestionAnswer {
        public string Q {get; set;}
        public string A {get; set;}

        public QuestionAnswer(string Question, string Answer)
        {
            Q = Question;
            A = Answer;
        }
    }

    class Program
    {
        static void Main(string[] args) 
        {
            QuestionAnswer[] questions = new QuestionAnswer[] 
            {
                new QuestionAnswer("In what year was C# released?", "2000"),
                new QuestionAnswer("Who was the lead designer of C#?", "Anders Hejlsberg"),
                new QuestionAnswer("How many reserved keywords does C# have?", "79"),
                new QuestionAnswer("What is the standard typing style for local variables in C#?", "camelCase"),
                new QuestionAnswer("What is the standard typing style for properties in C#?", "PascalCase"),
            };

            int incorrectGuesses = 0;

            foreach (var question in questions) 
            {
                Console.WriteLine(question.Q);

                string guess = "";
                while (guess != question.A && guess != "skip")
                {
                    Console.Write("> ");
                    guess = Console.ReadLine() ?? "";

                    if (guess == "skip")
                    {
                        incorrectGuesses += 10;
                        Console.WriteLine();
                    }
                    else if (guess != question.A)
                    {
                        incorrectGuesses++;
                    }
                    else
                    {
                        Console.WriteLine("Correct");
                        Console.WriteLine();
                    }
                }
            }
        }
    }
}

