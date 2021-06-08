import 'dart:convert';
import 'package:flutter_learning/models/cat.dart';

class CatAPI {
  static List<Cat> allCatsFromJson(String jsonData) {
    List<Cat> cats = [];
    json.decode(jsonData)['cats'].forEach((cat) => cats.add(_forMap(cat)));
    return cats;
  }

  static Cat _forMap(Map<String, dynamic> map) {
    return new Cat(
      externalID: map['id'],
      name: map['name'],
      description: map['description'],
      avatarURL: map['image_url'],
      loaction: map['loaction'],
      likecount: map['like_counter'],
      isAdopted: map['adopted'],
      pictures: new List<String>.from(map['pictures']),
      cattributes: new List<String>.from(map['cattributes']),
    );
  }
}
