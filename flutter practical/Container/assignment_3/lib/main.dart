import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar",
          style: TextStyle(fontSize: 30, 
          fontWeight: FontWeight.w500,
          color: Colors.black,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 206, 102, 224),
              border: Border.all(
                color: Colors.purple,
                width: 5,
              ),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
