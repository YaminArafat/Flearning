import 'package:flutter_learning/models/cat.dart';
import 'package:flutter/material.dart';

class FooterPicTab extends StatelessWidget {
  final Cat cat;

  FooterPicTab(
    this.cat,
  );

  @override
  Widget build(BuildContext context) {
    var imgItems = <Widget>[];

    for (var i = 0; i < cat.pictures.length; i++) {
      var image = new Image.network(
        cat.pictures[i],
        width: 300,
        height: 300,
      );
      imgItems.add(image);
    }

    var delegate = new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
    );

    return new GridView(
      gridDelegate: delegate,
      padding: const EdgeInsets.only(top: 16.0),
      children: imgItems,
    );
  }
}
