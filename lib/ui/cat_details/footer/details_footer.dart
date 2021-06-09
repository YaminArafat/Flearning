import 'package:flutter_learning/models/cat.dart';
import 'package:flutter/material.dart';

class CatDetailsFooter extends StatefulWidget {
  final Cat cat;

  CatDetailsFooter(
    this.cat,
  );
  @override
  CatDetailsFooterState createState() => new CatDetailsFooterState();
}

class CatDetailsFooterState extends State<CatDetailsFooter>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    //
  }
}
