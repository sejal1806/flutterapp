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
          title: const Text("AppBar",
          style: TextStyle(fontSize:30,
          fontWeight: FontWeight.w500,
          ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(214, 221, 82, 7),
        ),
        body: 
            Stack(
          children: [
            Center(
            child: Container(
              height: 300,
              width: 300,
              child: Image.network("https://cdn.wallpapersafari.com/41/48/swnFGb.jpg"),
            ),
            ),
            const Center(
              child: Text("Core2Web",
              style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}