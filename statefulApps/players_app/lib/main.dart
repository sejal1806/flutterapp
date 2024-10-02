import "package:flutter/material.dart";

void main(){
  runApp(const PlayerApp());
}
class PlayerApp extends StatefulWidget{
  const PlayerApp({super.key});

  @override
  State createState() => _PlayerAppState();
}class _PlayerAppState extends State{
  int _counter = 0;
  List playerList = [
    "https://tse4.mm.bing.net/th?id=OIP.XA8mPULRKYGUjLkKOWoPcwHaFj&pid=Api&P=0&h=180",
"https://www.mykhel.com/img/2019/03/ms-dhoni-batting-vs-australia-odi-1551462357.jpg",
"https://wallpaperaccess.com/full/1869048.jpg",
"https://external-preview.redd.it/MNFR0aQna-85fcaVJe3eqbAdFYJ0fOPz8NLHpSQJgpM.jpg?auto=webp&s=f23ce5668930f94faa320aa1cf053803899478f2",
"https://tse1.mm.bing.net/th?id=OIP.0XkRkUSlM7ZFwV_CKKC6nAHaFj&pid=Api&P=0&h=180",
  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Players',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Players App"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                playerList[_counter],
                height: 300,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(_counter < playerList.length-1){
              _counter++;
            }else{
              _counter = 0;
            }
            setState(() {});
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}