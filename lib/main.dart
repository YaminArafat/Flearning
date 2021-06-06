import 'package:flutter/material.dart';
import 'package:flutter_application_helloworld/ui/cat_list.dart';

void main() async {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.pinkAccent,
      ),
      home: new CatList(),
    );
  }
}
/// test