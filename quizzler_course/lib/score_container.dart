import 'package:flutter/material.dart';

class ScoreContainer extends StatelessWidget {
  final List<Icon> scores;
  const ScoreContainer({super.key, required this.scores});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: scores,
    );
  }
}
