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
  bool changeText = true;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white,),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 143, 9, 153),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
            if(changeColor == true){
              changeColor = false;
            }else{
              changeColor = true;
            }
            if(changeText == true){
              changeText = false;
            }else{
              changeText = true;
            }
            setState((){});
            },
          child: Container(
            height: 300,
            width: 300,
            color: changeColor? const Color.fromARGB(255, 198, 44, 33) : const Color.fromARGB(255, 22, 125, 209),
            child: changeText? const Center (child: Text("Click Me!", style: TextStyle(color: Colors.white, fontSize: 20,),),) : const Center( child: Text("Container Tapped", style: TextStyle(color: Colors.white, fontSize: 20,),),),
          ),
        ),
        ),
      ),
    );
  }
}