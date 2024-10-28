

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "./todomodel.dart";
import 'package:intl/intl.dart';

class todoapp extends StatefulWidget {
  const todoapp({super.key});

  @override
  State<todoapp> createState() => _todoappState();
}

class _todoappState extends State<todoapp> {
  List<todomodel> cards = [
    todomodel(title: "java", description: "oops", date: "12oct2024"),
  ];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  void submit(bool doedit, [todomodel? todoObj]) {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (doedit) {
        todoObj!.title = titleController.text;
        todoObj.description = descriptionController.text;
        todoObj.date = dateController.text;
      } else {
        cards.add(
          todomodel(
              title: titleController.text,
              description: descriptionController.text,
              date: dateController.text),
        );
      }
    }
    Navigator.of(context).pop();
    controller();
    

    setState(() {});
  }
  void controller() {
      titleController.clear();
      descriptionController.clear();
      dateController.clear();
    }

  void show(bool doedit, [todomodel? todoObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 12.0,
              right: 12.0,
              top: 12.0,
              bottom: MediaQuery.of(context).viewInsets.bottom, //for keyboard
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Create Todo",
                        style: GoogleFonts.quicksand(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ))
                  ],
                ),
                //TEXTFILLED
                Text(
                  "Title",
                  style: GoogleFonts.quicksand(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 139, 148, 1),
                  ),
                ),
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Description",
                  style: GoogleFonts.quicksand(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 139, 148, 1),
                  ),
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Date",
                  style: GoogleFonts.quicksand(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 139, 148, 1),
                  ),
                ),
                TextField(
                  controller: dateController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1.0),
                      ),
                    ),
                    suffixIcon: const Icon(Icons.calendar_month),
                  ),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2023),
                      lastDate: DateTime(2025),
                    );
                    String formattedDate =
                        DateFormat.yMMMd().format(pickedDate!);
                    setState(() {
                      dateController.text = formattedDate;
                    });
                  },
                ),
                //SUBMIT BUTTON
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (doedit == true) {
                        submit(true, todoObj);
                      } else {
                        submit(false);
                      }

                      setState(() {});
                    },
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromRGBO(0, 139, 148, 1)),
                    ),
                    child: Text(
                      "Submit",
                      style: GoogleFonts.quicksand(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  List clr = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "To-do list",
            style: GoogleFonts.quicksand(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),
        body: ListView.builder(
            itemCount: cards.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: clr[index % clr.length],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 72,
                                  width: 72,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child: Image.asset("assets/Group 42.jpg"),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    //TITLE
                                    Text(
                                      cards[index].title!,
                                      style: GoogleFonts.quicksand(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      //DESCRIPTION
                                      cards[index].description!,

                                      style: GoogleFonts.quicksand(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            const Color.fromRGBO(84, 84, 84, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                //DATE
                                Text(
                                  cards[index].date!,
                                  style: GoogleFonts.quicksand(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(132, 132, 132, 1),
                                  ),
                                ),
                                const Spacer(),
                                //EDIT ICON

                                GestureDetector(
                                  onTap: () {
                                    titleController.text = cards[index].title!;
                                    dateController.text = cards[index].date!;
                                    descriptionController.text =
                                        cards[index].description!;

                                    show(
                                      true,
                                      cards[index],
                                    );

                                    setState(() {});
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                  ),
                                ),

                                const SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    cards.remove(cards[index]);
                                    setState(() {});
                                  },
                                  child: const Icon(
                                    Icons.delete,
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            show(false);
          },
          shape: const CircleBorder(),
          backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 50,
          ),
        ));
  }
}
