import 'package:flutter/material.dart';
import '../models/question.dart';

class QuestionContainer extends StatelessWidget {
  final Question currentQuestion;
  const QuestionContainer({super.key, required this.currentQuestion});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 8,
        child: Center(
            child: Text(
          textAlign: TextAlign.center,
          currentQuestion.question,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        )));
  }
}
