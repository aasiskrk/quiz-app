import 'dart:io';

import 'options.dart';
import 'question.dart';

void main() {
  // Create 10 questions
  final questions = [
    Questions(
      questionId: 1,
      question: "Is the sky blue?",
      yesNoOption: YesNoOption(
        question: "Is the sky blue?",
        answer: true,
      ),
    ),
    Questions(
      questionId: 2,
      question: "What is the capital of France?",
      multipleOption: MultipleOption(
        options: ["Paris", "London", "Berlin", "Madrid"],
        correctIndex: 0,
      ),
    ),
    Questions(
      questionId: 3,
      question: "Is water wet?",
      yesNoOption: YesNoOption(
        question: "Is water wet?",
        answer: true,
      ),
    ),
    Questions(
      questionId: 4,
      question: "What is the largest planet in our solar system?",
      multipleOption: MultipleOption(
        options: ["Earth", "Mars", "Jupiter", "Saturn"],
        correctIndex: 2,
      ),
    ),
    Questions(
      questionId: 5,
      question: "Is the Earth flat?",
      yesNoOption: YesNoOption(
        question: "Is the Earth flat?",
        answer: false,
      ),
    ),
    Questions(
      questionId: 6,
      question: "What is the capital of Australia?",
      multipleOption: MultipleOption(
        options: ["Sydney", "Melbourne", "Brisbane", "Canberra"],
        correctIndex: 3,
      ),
    ),
    Questions(
      questionId: 7,
      question: "Can humans survive without oxygen?",
      yesNoOption: YesNoOption(
        question: "Can humans survive without oxygen?",
        answer: false,
      ),
    ),
    Questions(
      questionId: 8,
      question: "What is the highest mountain in the world?",
      multipleOption: MultipleOption(
        options: ["Mount Everest", "K2", "Kangchenjunga", "Lhotse"],
        correctIndex: 0,
      ),
    ),
    Questions(
      questionId: 9,
      question: "Is the moon made of cheese?",
      yesNoOption: YesNoOption(
        question: "Is the moon made of cheese?",
        answer: false,
      ),
    ),
    Questions(
      questionId: 10,
      question: "Which of these is not a planet?",
      multipleOption: MultipleOption(
        options: ["Venus", "Mars", "Jupiter", "Pluto"],
        correctIndex: 3,
      ),
    ),
  ];

  int score = 0;

  for (final question in questions) {
    if (question.yesNoOption != null) {
      // User input for yes/no question
      print(question.yesNoOption!.question);
      print("1. Yes\n2. No");
      int userInput = int.parse(stdin.readLineSync()!);
      bool userAnswer = userInput == 1;
      if (userAnswer == question.yesNoOption!.answer) {
        score++;
      }
    } else if (question.multipleOption != null) {
      // User input for multiple-choice question
      print(question.question);
      for (int i = 0; i < question.multipleOption!.options.length; i++) {
        print("${i + 1}. ${question.multipleOption!.options[i]}");
      }
      int userInput = int.parse(stdin.readLineSync()!);
      if (userInput - 1 == question.multipleOption!.correctIndex) {
        score++;
      }
    }
  }

  print("Final score: $score out of ${questions.length}");
}