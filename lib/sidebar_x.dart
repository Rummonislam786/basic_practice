// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
// import 'package:basic_practice/sidebar_x.dart';
import 'package:sidebarx/sidebarx.dart';

class Sidebaxe extends StatefulWidget {
  const Sidebaxe({Key? key}) : super(key: key);

  @override
  State<Sidebaxe> createState() => _SidebaxeState();
}

class _SidebaxeState extends State<Sidebaxe> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final List<sidebarModels> _sidebarlist = [
    sidebarModels("Home", Icons.home),
    sidebarModels("Details", Icons.details),
    sidebarModels(" ", Icons.abc),
    sidebarModels("Home", Icons.abc),
    sidebarModels("Home", Icons.abc),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SideBarX Package"),
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Row(
          children: [
            SidebarX(
              controller: _controller,
              extendedTheme: SidebarXTheme(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(
                  left: 10,
                ),
              ),
              items: _sidebarlist
                  .map(
                    (e) => SidebarXItem(icon: e.icon, label: e.label),
                  )
                  .toList(),
            ),
            Expanded(child: Container())
          ],
        ),
      ),
    );
  }
}

class sidebarModels {
  final String? label;
  final IconData? icon;

  sidebarModels(this.label, this.icon);
}
