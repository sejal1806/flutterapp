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
        style: TextStyle(fontWeight: FontWeight.w500,),
        ), 
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(
              width: 3,
              color: Colors.red,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(0, -4),
              ),
            ],
          ),
        ), 
      ),
    ),
  );
 }
}