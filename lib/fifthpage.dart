// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  String? textvalue;
  final dummydata = ["rummon", "monowar", "Atika", "Dipto"];
  final newdummydata = ["jackfruit", "guava", "orange", "apple"];
  final List<ListdataModel> dummylist = [
    ListdataModel("jackfruit", Color.fromARGB(255, 3, 46, 5)),
    ListdataModel("guava", Colors.green),
    ListdataModel("orange", Colors.orange),
    ListdataModel("apple", Colors.red),
    ListdataModel("mango", Colors.yellow),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fifth Page"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "comment",
                  border: OutlineInputBorder(),
                ),
                onChanged: (v) {
                  setState(() {
                    textvalue = v;
                  });
                },
              ),
            ),
            textvalue == null
                ? SizedBox.shrink()
                : Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(textvalue!),
                  ),
            Expanded(
              child: ListView(
                children: [
                  ...dummydata.map((item) => Text(item)).toList(),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: dummylist.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: Card(
                        color: dummylist[index].color,
                        elevation: 3,
                        child: Center(child: Text(dummylist[index].title)),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListdataModel {
  final title;
  final color;

  ListdataModel(this.title, this.color);
}
