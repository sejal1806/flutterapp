import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

@override 
State createState() => _MainAppState();
}

class _MainAppState extends State{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Where do you want to travel?",
          style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.w600,
          color: const Color.fromRGBO(255, 255, 255, 1),
          ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(27, 48, 101, 1),
        ),
        body: Column( children: [ const SizedBox(height: 23,),
        Row( children: [
          const SizedBox(width: 40,),
           Container(
            width: 314,
            height: 41,
            child: Center( child:  Row(
          children: [
            
            Container(
              height: 41,
              width: 253,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(233, 237, 248, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: const Text("Select Destination",
                style: TextStyle(fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(52, 111, 249, 1),
                 ),
                ),
              ),
            ),
            const SizedBox(width:20,),
            Container(
              height: 41,
              width: 41,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(52, 111, 249, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(Icons.search,
              color: const Color.fromRGBO(255, 255, 255, 1),
              ), 
            ),
          ],
        ),
        
        ),
          ),
        ],
        ),
        ],
      ),
      ),
    ); 
  }
}
