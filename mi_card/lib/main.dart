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
      backgroundColor: Colors.teal,
      body: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          ),
          const Text(
            "Salomon Tshobohwa",
            style: TextStyle(
                fontFamily: 'Lobster', fontSize: 32, color: Colors.white),
          ),
          const Text(
            "FLUTTER DEVELOPER",
            style: TextStyle(
                fontFamily: 'Poppins', color: Colors.white, fontSize: 24),
          ),
          Container(
            height: 80,
            margin: const EdgeInsets.all(10),
            color: Colors.white,
            child: const Row(
              children: [
                Icon(Icons.phone),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "+243 97 34 58 999",
                  style: TextStyle(fontSize: 18, color: Colors.teal),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
