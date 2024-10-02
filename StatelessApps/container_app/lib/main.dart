import 'package:flutter/material.dart';

void main(){
  print("Incubators");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
    Widget build(BuildContext build){
      return const MaterialApp(
        title: "Core2web",
        home: TestApp(),
      );
    }
  }
  class TestApp extends StatelessWidget{
    const TestApp({super.key});
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text("First App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            color: Colors.amber,
          ),
        ),
      )
    );
  }
}
