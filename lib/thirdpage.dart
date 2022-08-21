import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage(
      {Key? key,
      required this.address,
      required this.bloodGroup,
      required this.someName})
      : super(key: key);

  final String address;
  final String bloodGroup;
  final String someName;

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Details of ${widget.someName}")),
          Center(child: Text("Address: ${widget.address}")),
          Center(child: Text("Bloodgroup: ${widget.bloodGroup}")),
        ],
      ),
    );
  }
}
