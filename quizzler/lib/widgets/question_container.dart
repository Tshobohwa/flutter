import 'package:flutter/material.dart';
import '../models/question.dart';

class QuestionContainer extends StatefulWidget {
  final Question currentQuestion;
  const QuestionContainer({super.key, required this.currentQuestion});

  @override
  State<QuestionContainer> createState() => _QuestionContainerState();
}

class _QuestionContainerState extends State<QuestionContainer> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
