import 'package:flutter_learning/models/cat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/ui/cat_details/details_body.dart';
import 'package:flutter_learning/ui/cat_details/footer/details_footer.dart';
import 'package:flutter_learning/ui/cat_details/header/details_header.dart';
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
  var linearGradient = new BoxDecoration(
    gradient: new LinearGradient(
      begin: FractionalOffset.bottomLeft,
      end: FractionalOffset.centerRight,
      colors: [
        Colors.purple,
        Colors.pink,
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Container(
          decoration: linearGradient,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new CatDetailsHeader(
                widget.cat,
                avatarTag: widget.avatarTag,
              ),
              new Padding(
                padding: const EdgeInsets.only(
                  top: 25.0,
                  left: 25.0,
                  right: 25.0,
                ),
                child: new CatDetailsBody(
                  widget.cat,
                ),
              ),
              new Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                ),
                child: new CatDetailsFooter(
                  widget.cat,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
