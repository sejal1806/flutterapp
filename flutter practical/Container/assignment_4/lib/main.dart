import 'package:flutter/material.dart';

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
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            color: Color.fromARGB(155, 241, 33, 102),
            border: Border.all(
              color: const Color.fromARGB(255, 148, 5, 53),
              width: 2,
            ),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10,), topLeft: Radius.circular(10,),
            ),
          ),
          child: const Text("Sejal",
          style: TextStyle( fontSize: 20, fontWeight: FontWeight.w500,),
          ),
         ),
         ),
        ),
      ),
    );
  }
}
