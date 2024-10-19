import "package:flutter/material.dart";

void main(){
  runApp(MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar",
          style: TextStyle(fontSize: 30,),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors. white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
                child: Image.network("https://tse2.mm.bing.net/th?id=OIP.-6xdRtaz8FXH5EmuY8s6lAHaHa&pid=Api&P=0&h=180"),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
                child: Image.network("https://tse2.mm.bing.net/th?id=OIP.-6xdRtaz8FXH5EmuY8s6lAHaHa&pid=Api&P=0&h=180"),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
                child: Image.network("https://tse2.mm.bing.net/th?id=OIP.-6xdRtaz8FXH5EmuY8s6lAHaHa&pid=Api&P=0&h=180"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}