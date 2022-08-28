// ignore_for_file: prefer_const_constructors

import 'package:basic_practice/thirdpage.dart';
import 'package:flutter/material.dart';

class Forthpage extends StatefulWidget {
  const Forthpage({Key? key, required this.username}) : super(key: key);

  @override
  State<Forthpage> createState() => _ForthpageState();
  final String username;
}

class _ForthpageState extends State<Forthpage> {
  final _addressController = TextEditingController();
  final _bloodgroupController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.username),
        ),
        body: Material(
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            RichText(
                              text: TextSpan(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.book,
                                      size: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Welcome ${widget.username}",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Form(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 300,
                          child: TextField(
                            controller: _addressController,
                            decoration: InputDecoration(
                              labelText: "Address",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 300,
                          child: TextField(
                            controller: _bloodgroupController,
                            decoration: InputDecoration(
                              labelText: "Blood Group",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.green),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ThirdPage(
                                      bloodGroup: _bloodgroupController.text,
                                      address: _addressController.text,
                                      someName: widget.username,
                                    );
                                  },
                                ),
                              );
                            },
                            child: Text(
                              "Submit",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
