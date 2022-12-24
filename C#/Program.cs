
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
                new QuestionAnswer("q1", "a1"),
                new QuestionAnswer("q2", "a2")
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

