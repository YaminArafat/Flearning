import 'package:flutter/material.dart';
import 'package:flutter_learning/ui/cat_list.dart';

void main() async {
  runApp(new CatApp());
}

class CatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.pinkAccent,
        fontFamily: 'Ubuntu',
      ),
      home: new CatList(),
    );
  }
}
/// test