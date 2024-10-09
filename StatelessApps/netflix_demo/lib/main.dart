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
    title: const Text("Netflix Demo",
    style: TextStyle(
      fontSize: 30, fontWeight: FontWeight.w500,
    ),
    ),
    centerTitle: true,
    backgroundColor: Colors.blue,
  ),
  body: ListView.builder(
    itemCount: 10,
    physics: const BouncingScrollPhysics(),
    itemBuilder: (BuildContext context, int index){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Text("Action Movies",
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500,),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 300,
                  width: 200,
                  child: Image.network("https://image.tmdb.org/t/p/original/21yDfC3dv2pXeGnqx4KpAWlUua2.jpg"),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 300,
                  width: 200,
                  child: Image.network("https://image.tmdb.org/t/p/original/21yDfC3dv2pXeGnqx4KpAWlUua2.jpg"),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 300,
                  width: 200,
                  child: Image.network("https://image.tmdb.org/t/p/original/21yDfC3dv2pXeGnqx4KpAWlUua2.jpg"),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 300,
                  width: 200,
                  child: Image.network("https://image.tmdb.org/t/p/original/21yDfC3dv2pXeGnqx4KpAWlUua2.jpg"),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 300,
                  width: 200,
                  child: Image.network("https://image.tmdb.org/t/p/original/21yDfC3dv2pXeGnqx4KpAWlUua2.jpg"),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 300,
                  width: 200,
                  child: Image.network("https://image.tmdb.org/t/p/original/21yDfC3dv2pXeGnqx4KpAWlUua2.jpg"),
                ),
              ],
            ),
          ),
        ],
      );
    }
  )
),
);
  }
}