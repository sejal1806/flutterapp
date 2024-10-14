import "package:flutter/material.dart";

void main(){
 runApp(const MainApp());
}

class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override 
  State createState() => _MainAppState();
}

class _MainAppState extends State{
  TextEditingController nameController = TextEditingController();

  String? myName;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TextField Demo",
          style: TextStyle(fontSize: 30,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 181, 7, 13),
        ),
        body:  Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 30,
                ),
                obscureText: true,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String val){
                  print("Value: $val");
                },
                onEditingComplete: () {
                  print("Editing Complete");
                },
                onSubmitted: (value){
                  print("Value Submitted: $value");
                }
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print("Add Data");
                myName = nameController.text;
                print("My Name: $myName");
                nameController.clear();
                setState((){});
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 211, 21, 7),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Name: $myName",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}