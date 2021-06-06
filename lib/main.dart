import 'package:flutter/material.dart';
import 'package:flutter_application_helloworld/ui/word_game.dart';

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
      home: new word_game(),
    );
  }
}
