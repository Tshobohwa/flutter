import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'dicee',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
          shadowColor: Colors.black,
        ),
        body: const DicePage(),
        backgroundColor: Colors.red.shade300,
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('assets/images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
                rightDiceNumber = Random().nextInt(6) + 1;
              });
            },
            child: Image(
              image: AssetImage('assets/images/dice$rightDiceNumber.png'),
            ),
          ))
        ],
      ),
    );
  }
}
