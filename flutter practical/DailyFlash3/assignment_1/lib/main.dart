import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
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
          child: Container(
            padding: const EdgeInsets.all(5),
            width: 300,
            height: 300,
            child: Center(
              child: Image.network("https://tse4.mm.bing.net/th?id=OIP.vU-B13v7Y86k2xoU6LPlkwHaHa&pid=Api&P=0&h=180"),
            ),
          ),
        ),
      ),
    );
  }
}