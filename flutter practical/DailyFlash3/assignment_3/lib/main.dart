import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State{
  bool changeColor = true;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar",
          style: TextStyle(fontWeight:FontWeight.w500,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: GestureDetector( 
            onTap: () {
              if(changeColor == true){
              changeColor = false;
            }else{
              changeColor = true;
            }
            setState((){});
            },
            child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(
                color: changeColor? Colors.red : Colors.green, 
                width: 3,
              ),
            ),
          ),
        ),
        ),
      ),
    );
  }
}