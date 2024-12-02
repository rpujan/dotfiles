using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;

class Program
{
    static void Main()
    {
        // Ask for file path
        Console.WriteLine("Enter the file path (e.g., words.txt): ");
        string filePath = Console.ReadLine();

        // Check if the file exists
        if (!File.Exists(filePath))
        {
            Console.ForegroundColor = ConsoleColor.Red;
            Console.WriteLine("Error: Could not find the file. Ensure it exists in the specified path.");
            Console.ResetColor();
            return;
        }

        // Read the file and store key-value pairs
        List<(string Key, string[] Values)> wordPairs = new List<(string Key, string[] Values)>();
        string[] lines = File.ReadAllLines(filePath);

        foreach (var line in lines)
        {
            var parts = line.Split(new[] { '\t' }, StringSplitOptions.RemoveEmptyEntries); // Use tab as the separator
            if (parts.Length != 2)
            {
                continue; // Skip invalid lines silently
            }

            string key = parts[0].Trim();
            string[] values = parts[1].Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries)
                                      .Select(v => v.Trim()) // Remove whitespace around values
                                      .ToArray();

            wordPairs.Add((key, values));
        }

        // Check if the list is empty
        if (wordPairs.Count == 0)
        {
            Console.ForegroundColor = ConsoleColor.Red;
            Console.WriteLine("Error: No valid key-value pairs found in the file.");
            Console.ResetColor();
            return;
        }

        Random random = new Random();

        int totalQuestions = 0;
        int correctAnswers = 0;
        int incorrectAnswers = 0;

        // Priority list for incorrect answers
        List<(string Key, string[] Values)> priorityList = new List<(string Key, string[] Values)>();
        int regularQuestionCount = 0;

        // Game loop
        while (true)
        {
            totalQuestions++;

            (string Key, string[] Values) pair;

            // Decide whether to pick from priority list or main list
            if (priorityList.Count > 0 && regularQuestionCount >= 3) // Every 3-4 questions, pick from priority list
            {
                pair = priorityList[random.Next(priorityList.Count)];
                regularQuestionCount = 0; // Reset the counter
            }
            else
            {
                pair = wordPairs[random.Next(wordPairs.Count)];
                regularQuestionCount++;
            }

            // Randomly decide whether to prompt for Key or Value
            bool promptKey = random.Next(2) == 0;
            string prompt = promptKey ? pair.Key : pair.Values[random.Next(pair.Values.Length)];
            string[] correctAnswersArray = promptKey ? pair.Values : new[] { pair.Key };

            // Clear the screen before asking the new question
            Console.Clear();

            // Display the current question number
            Console.WriteLine($"Question: {totalQuestions:D2}");

            // Ask the question: either key or value
            Console.WriteLine(prompt);
            string userAnswer = Console.ReadLine();

            // Terminate if user presses Enter without typing anything
            if (string.IsNullOrWhiteSpace(userAnswer))
            {
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("\nProgram terminated.");
                Console.ResetColor();
                break;
            }

            // Check if the user's answer is in the correct answers array
            if (correctAnswersArray.Any(answer => answer.Equals(userAnswer.Trim(), StringComparison.OrdinalIgnoreCase)))
            {
                correctAnswers++;
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("Correct!");
                Console.ResetColor();

                // Remove the pair from the priority list if answered correctly
                priorityList.Remove(pair);
            }
            else
            {
                incorrectAnswers++;
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine($"Incorrect! The correct answers are: {string.Join(", ", correctAnswersArray)}");
                Console.ResetColor();

                // Add to the priority list if not already present
                if (!priorityList.Contains(pair))
                {
                    priorityList.Add(pair);
                }

                // Delay for 1 second if answer is incorrect
                Thread.Sleep(1000); // 1 second delay
            }

            // Delay for 500 milliseconds (half a second) for the next question after correct answer
            Thread.Sleep(500);
        }

        // Summary of the game
        Console.Clear();
        Console.ForegroundColor = ConsoleColor.Cyan;
        Console.WriteLine("\nGame Over!");
        Console.WriteLine($"Total Questions: {totalQuestions-1}");
        Console.WriteLine($"Correct Answers: {correctAnswers}");
        Console.WriteLine($"Incorrect Answers: {incorrectAnswers}");
        Console.ResetColor();
    }
}
