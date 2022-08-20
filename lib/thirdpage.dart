import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key, required this.username, required this.password})
      : super(key: key);

  final String username;
  final String password;

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(widget.username),
              Text(widget.password),
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Welcome ${widget.username}!",
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
