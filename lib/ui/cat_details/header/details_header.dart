import 'package:flutter_learning/models/cat.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CatDetailsHeader extends StatefulWidget {
  final Cat cat;
  final Object avatarTag;

  CatDetailsHeader(
    this.cat, {
    @required this.avatarTag,
  });
  @override
  CatDetailsHeaderState createState() => new CatDetailsHeaderState();
}

class CatDetailsHeaderState extends State<CatDetailsHeader> {
  @override
  Widget build(BuildContext context) {
    //TODO
  }
}
