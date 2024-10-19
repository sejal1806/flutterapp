import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Core2web",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple, 
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
          height: 200,
          width: 360,
          color: Colors.blue,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
          height: 200,
          width: 360,
          color: Colors.blue,
              ),
            ],
          )
        ),
      ),
    );
  }
}