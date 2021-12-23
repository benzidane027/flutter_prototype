// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Drawer(
        child: Column(
      children: [
        AppBar(
          title: Text("menu"),
        ),
        ListTile(
          title: Text("first"),
          leading: Icon(Icons.album_sharp),
          onTap: () => print("first press"),
        ),
        Divider(
          height: 20,
          thickness: 2,
        ),
        ListTile(
          title: Text("first"),
          leading: Icon(Icons.battery_full),
          onTap: () => print("second press"),
        ),
      ],
    ));
  }
}
