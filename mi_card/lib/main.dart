import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          ),
          Text(
            "Salomon Tshobohwa",
            style: TextStyle(
                fontFamily: 'Lobster', fontSize: 32, color: Colors.white),
          ),
          Text(
            "FLUTTER DEVELOPER",
            style: TextStyle(
                fontFamily: 'Poppins', color: Colors.white, fontSize: 24),
          ),
          Card(
              margin: EdgeInsets.all(10),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "+243 97 34 58 999",
                      style: TextStyle(fontSize: 18, color: Colors.teal),
                    )
                  ],
                ),
              )),
          Card(
              margin: EdgeInsets.all(10),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "salomon@gmail.com",
                      style: TextStyle(fontSize: 18, color: Colors.teal),
                    )
                  ],
                ),
              ))
        ],
      ),
    ));
  }
}
