import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State{
  TextEditingController nameController = TextEditingController();

  String? myName;

  List playerList = [];

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Aspect Ratio Demo",
          style: TextStyle(
            fontSize: 30,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.amber,
            child: Image.network("https://images.fineartamerica.com/images-medium-large-5/seaside-sunset-2-square-larry-marshall.jpg"),
          ),
        ),
      ),
    );
  }
}