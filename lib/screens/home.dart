// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

import 'components/body.dart';
import 'components/drawer.dart';

class home extends StatelessWidget {
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
          child: Text("my demo app"),
        ),
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    PopupMenuItem(child: Text("about")),
                    PopupMenuItem(child: Text("exit"))
                  ])
        ],
      ),
      body: Center(
        child: body(),
      ),
      drawer: drawer(),
    ));
  }
}
