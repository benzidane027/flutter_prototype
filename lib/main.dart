// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:demo/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/provider.dart';
void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider<MyPro>(create: (_) => MyPro())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my first app",
      home: home(),
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
    );
  }
}
