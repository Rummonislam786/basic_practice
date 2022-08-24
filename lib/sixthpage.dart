import 'package:basic_practice/appconst.dart';
import 'package:flutter/material.dart';

class sixthpage extends StatefulWidget {
  const sixthpage({Key? key}) : super(key: key);

  @override
  State<sixthpage> createState() => _sixthpageState();
}

class _sixthpageState extends State<sixthpage> {
  final List<String> list1 = [
    "rummon",
    "rissal",
    "rakin",
    "dipto",
    "shikab",
    "monowar"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(
          "Project 1",
        ),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.red,
            height: appconst.fullheight(context),
            width: appconst.fullwidth(context) / 4,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onSubmitted: (value) => setState(() {
                      list1.add(value);
                    }),
                    decoration: InputDecoration(
                      hintText: "Search:",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: appconst.fullheight(context),
                    width: double.infinity,
                    child: ListView(
                      children: [
                        ...list1
                            .map((e) => Card(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(e),
                                )))
                            .toList()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              // height: appconst.fullheight(context),
              // width: appconst.fullwidth(context),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      // height: appconst.fullheight(context) / 3,
                      width: appconst.fullwidth(context),
                      color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 90,
                                width: 300,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 90,
                                width: 300,
                                color: Colors.blueGrey,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.green,
                              child: ListView(
                                  children: list1
                                      .map((e) => GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                list1.add(e);
                                              });
                                            },
                                            child: Card(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(e),
                                              ),
                                            ),
                                          ))
                                      .toList()),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Color.fromARGB(255, 229, 255, 0),
                              child: ListView(
                                  children: list1
                                      .map((e) => Card(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(e),
                                            ),
                                          ))
                                      .toList()),
                            ),
                          )
                        ],
                      ),
                      // height: appconst.fullheight(context),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
