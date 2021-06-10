import 'package:flutter_learning/models/cat.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final dynamic attributesMap = {
  "children": {
    "name": "Kid Friendly",
    "icon": FontAwesomeIcons.child,
  },
  "desexed": {
    "name": "Desexed",
    "icon": FontAwesomeIcons.cut,
  },
  "vaccinated": {
    "name": "Vaccinated",
    "icon": FontAwesomeIcons.eyeDropper,
  },
  "microchipped": {
    "name": "Micro Chipped",
    "icon": FontAwesomeIcons.microchip,
  },
};

class FooterCattributesTab extends StatelessWidget {
  final Cat cat;

  FooterCattributesTab(
    this.cat,
  );

  createCircleBadge(
      IconData iconData, Color iconColor, Color bgColor, String attribute) {
    return new Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: new Stack(
        children: [
          new Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              top: 70.0,
            ),
            child: new Positioned(
              child: new Text(
                attribute,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: new CircleAvatar(
              backgroundColor: bgColor,
              child: new Icon(
                iconData,
                color: iconColor,
                size: 30.0,
              ),
              radius: 30.0,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var attributes = <Widget>[];

    for (var i = 0; i < cat.cattributes.length; i++) {
      var atrribute = createCircleBadge(
        attributesMap[cat.cattributes[i]]['icon'],
        Colors.white,
        Colors.amber,
        attributesMap[cat.cattributes[i]]['name'],
      );
      attributes.add(atrribute);
    }

    var delegate = new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      crossAxisSpacing: 3.0,
      mainAxisSpacing: 6.0,
    );

    return new GridView(
      gridDelegate: delegate,
      padding: const EdgeInsets.only(top: 16.0),
      children: attributes,
    );
  }
}
