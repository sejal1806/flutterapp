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
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(child:  
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
             Container(
              height: 300,
              width: 150,
              child: Image.network("https://i.pinimg.com/originals/71/21/85/712185683557a51c87a1d821a251d183.jpg",
              fit: BoxFit.fill,),
             ),
              const SizedBox(
                height: 10,
              ),
             Container(
              height: 300,
              width: 150,
              child: Image.network("https://i.pinimg.com/originals/71/21/85/712185683557a51c87a1d821a251d183.jpg",
              fit: BoxFit.fill,),
             ),
              const SizedBox(
                height: 10,
              ),
             Container(
              height: 300,
              width: 150,
              child: Image.network("https://i.pinimg.com/originals/71/21/85/712185683557a51c87a1d821a251d183.jpg",
              fit: BoxFit.fill,),
             ),
              const SizedBox(
                height: 10,
              ),
             Container(
              height: 300,
              width: 150,
              child: Image.network("https://i.pinimg.com/originals/71/21/85/712185683557a51c87a1d821a251d183.jpg",
              fit: BoxFit.fill,),
             ),
              const SizedBox(
                height: 10,
              ),
             Container(
              height: 300,
              width: 150,
              child: Image.network("https://i.pinimg.com/originals/71/21/85/712185683557a51c87a1d821a251d183.jpg",
              fit: BoxFit.fill,),
             ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}