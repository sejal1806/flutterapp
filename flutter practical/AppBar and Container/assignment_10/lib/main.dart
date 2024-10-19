import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: const Text("AppBar",
        style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.w500)
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
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
          borderRadius: BorderRadius.only(topLeft:Radius.circular(20),
          bottomRight: Radius.circular(20),
          ),
        ),
      ),
     ),
    ),
   );
  }
}
