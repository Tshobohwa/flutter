import 'package:flutter/material.dart';
import 'package:quizzler/models/question.dart';
import 'package:quizzler/widgets/question_container.dart';
import 'package:quizzler/widgets/scores_container.dart';

main() {
  runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const QuizPage(),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var currentQuestionIndex = 0;
  static const winIcon = Icon(
    Icons.check,
    color: Colors.green,
  );
  static const looseIcon = Icon(
    Icons.close,
    color: Colors.red,
  );
  static List<Icon> scores = [];
  static List<Question> questions = [
    Question(
        question: 'The Great Wall of China is visible from space.',
        answer: false),
    Question(
        question:
            'The Eiffel Tower was originally intended to be a temporary structure.',
        answer: true),
    Question(
        question: 'Australia is both a country and a continent.', answer: true),
    Question(
        question: 'Mount Everest is the highest mountain above sea level.',
        answer: true),
    Question(question: 'The currency of Japan is the Yuan.', answer: false),
    Question(
        question: 'The Amazon River is the longest river in the world.',
        answer: false),
    Question(
        question: 'The Mona Lisa is displayed in the Louvre Museum in Paris.',
        answer: true),
    Question(
        question:
            'Vincent van Gogh only sold one painting during his lifetime.',
        answer: true),
    Question(question: 'The moon is larger than Pluto.', answer: true),
    Question(
        question: 'The Sahara Desert is the largest hot desert in the world.',
        answer: true),
  ];

  // void changeCurrentQuestionIndex = () {};

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        QuestionContainer(
          currentQuestion: questions[currentQuestionIndex],
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            color: Colors.green,
            child: TextButton(
              onPressed: () {
                setState(() {
                  questions[currentQuestionIndex].answer == true
                      ? scores.add(winIcon)
                      : scores.add(looseIcon);
                  currentQuestionIndex =
                      (currentQuestionIndex + 1) % questions.length;
                });
              },
              child: const Text(
                "Yes",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              color: Colors.red,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    questions[currentQuestionIndex].answer == false
                        ? scores.add(winIcon)
                        : scores.add(looseIcon);
                    currentQuestionIndex =
                        (currentQuestionIndex + 1) % questions.length;
                  });
                },
                child: const Text(
                  "No",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )),
        ScoresContainer(scores: scores)
      ],
    );
  }
}
