import 'package:flutter_learning/models/cat.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CatDetailsPage extends StatefulWidget {
  final Cat cat;
  final Object avatarTag;

  CatDetailsPage(
    this.cat, {
    @required this.avatarTag,
  });

  @override
  CatDetailsPageState createState() => new CatDetailsPageState();
}

class CatDetailsPageState extends State<CatDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
