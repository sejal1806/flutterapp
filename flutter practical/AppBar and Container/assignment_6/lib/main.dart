import "package:flutter/material.dart";

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar",
          style: TextStyle(fontSize: 30,
          fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 186, 15, 72),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(child:  
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.purple,
              ),
              const SizedBox(
                height: 15,
              ),
               Container(
                height: 200,
                width: 200,
                color: Colors.deepPurple,
              ),
              const SizedBox(
                height: 15,
              ),
               Container(
                height: 200,
                width: 200,
                color: Color.fromARGB(255, 9, 116, 203),
              ),
              const SizedBox(
                height: 15,
              ),
               Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 15,
              ),
               Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              const SizedBox(
                height: 15,
              ),
               Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
              ),
              const SizedBox(
                height: 15,
              ),
               Container(
                height: 200,
                width: 200,
                color: Colors.orange,
              ),
              const SizedBox(
                height: 15,
              ),
               Container(
                height: 200,
                width: 200,
                color: Colors.deepOrange,
              ),
              const SizedBox(
                height: 15,
              ),
               Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              const SizedBox(
                height: 15,
              ),
               Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 227, 29, 15),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}