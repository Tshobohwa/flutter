import 'package:flutter/material.dart';

class ScoresContainer extends StatelessWidget {
  final List<Icon> scores;
  const ScoresContainer({super.key, required this.scores});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        children: scores,
      ),
    );
  }
}
