import 'package:quiz_app/model/quiz_screen_models/questions_model.dart';

class HomeScreeController {
  static List<QuestionsModel> questionsList = [
    QuestionsModel(
      questions: "What is the capital of France?",
      optionList: ["Berlin", "Madrid", "Paris", "Rome"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      questions:
          "Which programming language is used for Android app development?",
      optionList: ["Python", "Java", "C++", "JavaScript"],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      questions: "What is the chemical symbol for water?",
      optionList: ["H2O", "CO2", "O2", "N2"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      questions: "Who is the author of 'Harry Potter' series?",
      optionList: [
        "J.R.R. Tolkien",
        "J.K. Rowling",
        "Stephen King",
        "George R.R. Martin"
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      questions: "What is the largest planet in our solar system?",
      optionList: ["Mercury", "Venus", "Jupiter", "Saturn"],
      correctAnswerIndex: 2,
    )
  ];
}
