import 'package:quiz_app/model/quiz_screen_models/questions_model.dart';

class HomeScreeController {
  static List<QuestionsModel> sportsList = [
    QuestionsModel(
      questions:
          "Which country has won the most Olympic gold medals in men's basketball?",
      optionList: ["United States", "Argentina", "Spain", "Soviet Union"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      questions: "Who is known as 'The Greatest' in boxing?",
      optionList: [
        "Mike Tyson",
        "Muhammad Ali",
        "Floyd Mayweather Jr.",
        "Manny Pacquiao"
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      questions:
          "Which tennis player has won the most Wimbledon titles in the Open Era?",
      optionList: [
        "Roger Federer",
        "Rafael Nadal",
        "Pete Sampras",
        "Novak Djokovic"
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      questions: "Which team won the first FIFA Women's World Cup in 1991?",
      optionList: ["United States", "Germany", "Norway", "Brazil"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      questions: "Who has won the most Formula 1 World Drivers' Championships?",
      optionList: [
        "Lewis Hamilton",
        "Michael Schumacher",
        "Sebastian Vettel",
        "Ayrton Senna"
      ],
      correctAnswerIndex: 1,
    ),
  ];
  static List<QuestionsModel> chemistryList = [
    QuestionsModel(
      questions: "What is the chemical symbol for gold?",
      optionList: ["Au", "Ag", "Fe", "Cu"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      questions:
          "Which element is the most abundant in the Earth's atmosphere?",
      optionList: ["Oxygen", "Nitrogen", "Carbon", "Hydrogen"],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      questions: "What is the chemical formula for water?",
      optionList: ["H2O2", "CO2", "H2O", "HCl"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      questions: "Which gas is produced during photosynthesis?",
      optionList: ["Oxygen", "Carbon dioxide", "Nitrogen", "Methane"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      questions: "What is the atomic number of carbon?",
      optionList: ["5", "6", "7", "8"],
      correctAnswerIndex: 1,
    ),
  ];
  static List<QuestionsModel> mathsList = [
    QuestionsModel(
      questions: "What is the value of π (pi) to two decimal places?",
      optionList: ["3.12", "3.14", "3.16", "3.18"],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      questions: "What is the square root of 144?",
      optionList: ["10", "12", "14", "16"],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      questions:
          "If a triangle has angles measuring 45°, 45°, and 90°, what type of triangle is it?",
      optionList: [
        "Acute triangle",
        "Obtuse triangle",
        "Right triangle",
        "Equilateral triangle"
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      questions: "What is the result of 7! (7 factorial)?",
      optionList: ["42", "120", "5040", "720"],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      questions: "If x + 5 = 10, what is the value of x?",
      optionList: ["3", "5", "10", "15"],
      correctAnswerIndex: 1,
    ),
  ];
  static List<QuestionsModel> historyList = [
    QuestionsModel(
      questions: "Who was the first President of the United States?",
      optionList: [
        "Abraham Lincoln",
        "Thomas Jefferson",
        "George Washington",
        "John Adams"
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      questions: "Which ancient civilization built the Great Pyramid of Giza?",
      optionList: ["Greek", "Roman", "Egyptian", "Mesopotamian"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      questions: "Who was the leader of the Soviet Union during World War II?",
      optionList: [
        "Joseph Stalin",
        "Vladimir Lenin",
        "Mikhail Gorbachev",
        "Nikita Khrushchev"
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      questions: "Which war is known as the 'War to End All Wars'?",
      optionList: ["World War I", "World War II", "Vietnam War", "Korean War"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      questions:
          "Who was the first female Prime Minister of the United Kingdom?",
      optionList: [
        "Margaret Thatcher",
        "Theresa May",
        "Indira Gandhi",
        "Angela Merkel"
      ],
      correctAnswerIndex: 0,
    ),
  ];
}
