import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.white,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(20.0),
        child: const Text("Salomon"),
      ),
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: const Text(
          "+",
          style: TextStyle(fontSize: 24),
        ),
      ),
    ));
  }
}
