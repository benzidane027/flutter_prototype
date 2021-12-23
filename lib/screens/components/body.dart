// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors

import 'package:demo/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class body extends StatelessWidget {
  Widget build(BuildContext context) {
    var p = Provider.of<MyPro>(context);
    return Column(
      children: [
        Text(
          p.get(),
          style: TextStyle(fontSize: 50),
        ),
        FloatingActionButton(
          onPressed: () => p.increment(),
          child: Icon(Icons.alarm_on),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }
}
