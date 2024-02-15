import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Expanded(
            flex: 8,
            child: Center(
              child: Text(
                "Your question goes here",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )),
        Expanded(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            color: Colors.green,
            child: TextButton(
              onPressed: () {},
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
                onPressed: () {},
                child: const Text(
                  "No",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )),
      ],
    );
  }
}
