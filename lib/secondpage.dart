// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:basic_practice/appconst.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          "Sample",
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: FaIcon(FontAwesomeIcons.b),
            color: Colors.black,
          )
        ],
      ),
      body: Container(
          color: Colors.green,
          width: appconst.fullwidth(context),
          height: appconst.fullheight(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: appconst.fullheight(context) / 2,
                  width: appconst.fullwidth(context) / 2,
                  color: Colors.red,
                  child: Text(
                      "${appconst.fullheight(context)} ${appconst.fullwidth(context)}"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    width: 200,
                    height: 30,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: Text("Button"))),
              )
            ],
          )),
    );
  }
}
