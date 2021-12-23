import "package:flutter/foundation.dart";
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyPro with ChangeNotifier, DiagnosticableTreeMixin {
  String n = "hi";

  increment() {
    notifyListeners();
  }

  String get() {
    return n;
  }

  void give() async {
    var respons = await http
        .get(Uri.parse("https://www.breakingbadapi.com/api/characters/1"));
    Map resualt =
        jsonDecode(respons.body.substring(1, respons.body.length - 1));
    this.n = resualt["name"];
    
  }
}
