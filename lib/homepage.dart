// ignore_for_file: prefer_const_constructors

import 'package:basic_practice/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Favorite"),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Favorite"),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Favorite"),
              subtitle: Text("style"),
            ),
          ],
        ),
      ),
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Secondpage(),
                  ));
            },
            icon: const FaIcon(
              FontAwesomeIcons.a,
            ),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.b),
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        child: Image.asset(
          "images/one.png",
          height: 600,
          width: 200,
        ),
      ),
    );
  }
}
