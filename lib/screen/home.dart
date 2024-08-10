import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_dumy/screen/model/notes.dart';

import 'colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Notes> filterNotes = [];

  delete(int index) {
    setState(() {
      filterNotes.removeAt(index);
      Notes notes = filterNotes[index];
      data.remove(notes);
      filterNotes.removeAt(index);
    });
  }

  @override
  void initState() {
    super.initState();
    filterNotes = data;
  }

  getRanderColor() {
    Random random = Random();
    return backgroundcolors[random.nextInt(backgroundcolors.length)];
  }

  void sampleSearch(String searchText) {
    setState(() {
      filterNotes = data
          .where((note) =>
              note.content2.toLowerCase().contains(searchText.toLowerCase()) ||
              note.title.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  List<Notes> data = [
    Notes(
      id: 0,
      title: "Like and Subscribe",
      content2:
          "Social content is unstructured data created, vetted, marked-up or delivered through a social process or channel and destined for human consumption.",
      modifiedTime: DateTime(2022, 1, 1, 12, 34, 5),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 223, 195),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.all(12),
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(31, 117, 44, 211),
                  borderRadius: BorderRadius.circular(22)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: sampleSearch,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Hrere",
                    ),
                  ),
                ),
              )),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: filterNotes.length,
              itemBuilder: (context, index) {
                final note = data[index];
                return Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: getRanderColor(),
                      borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    title: Text(
                      note.title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(note.content2),
                    trailing: IconButton(
                        onPressed: () async{
                          
                          final result = await
                          
                          cinfirmDilog(context);
                              if(result!=null && result){
                                delete(index);
                              }
                        },
                        icon: const Icon(Icons.delete)),
                    // trailing: Text(
                    // "${note.modifiedTime.day}/${note.modifiedTime.month}/${note.modifiedTime.year}",
                    // style: TextStyle(fontSize: 12, color: Colors.grey),
                    // ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> cinfirmDilog(BuildContext context) {
    return showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.grey,
                                icon: const Icon(
                                  Icons.info,
                                  color: Colors.grey,
                                ),
                                title: const Text(
                                  "Are you Sure want to delete",
                                  style: TextStyle(color: Colors.white),
                                ),
                                content: Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context, false);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green
                                      ),
                                      child: const SizedBox(
                                        width: 60,
                                        child: Text(
                                          "Yes",
                                          textAlign: TextAlign.center,
                                          style:
                                              TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context, false);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red
                                      ),
                                      child: const SizedBox(
                                        width: 60,
                                        child: Text(
                                          "No",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
  }
}
