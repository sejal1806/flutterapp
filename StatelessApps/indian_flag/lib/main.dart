import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "Indian Flag",
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget{
  const MyScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
  appBar: AppBar(
    title: const Text("Indian Flag"),
    centerTitle: true,
    backgroundColor: Colors.blue,
  ),
  body: Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
        width: 5,
        height: 500,
        color:Colors.black
      ),
      Column(
        children: [
          const SizedBox(
            height: 145,
          ),
          Container(
            height: 35,
            width: 200,
            color: Colors.orange,
          ),
          Container(
            height: 35,
            width: 200,
            color: Colors.white,
            child: Image.network("https://tse1.mm.bing.net/th?id=OIP.3nftDdnLbMop6GQS78hK7gHaHa&pid=Api&P=0&h=180")
          ),
          Container(
            height: 35,
            width: 200,
            color:Colors.green,
          ),
        ]
      )
      ]
    ),
  ),
    );
  }
}
    
      