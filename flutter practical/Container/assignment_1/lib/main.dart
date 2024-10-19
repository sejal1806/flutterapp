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
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.black, 
          ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 161, 4, 189),
        ),
        body:  Center(
       child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(
            color: Colors.red,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Text("Hello!!",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
        ),
       ),
      ),
      ),
    );
  }
}
