import 'package:meta/meta.dart';

class Cat {
  final int externalID;
  final String name;
  final String description;
  final String avatarURL;
  final String loaction;
  final int likecount;
  final bool isAdopted;
  final List<String> pictures;
  final List<String> cattributes;

  Cat({
    @required this.externalID,
    @required this.name,
    @required this.description,
    @required this.avatarURL,
    @required this.loaction,
    @required this.likecount,
    @required this.isAdopted,
    @required this.pictures,
    @required this.cattributes,
  });
  // String toString() {
  //   return "Cat $externalID is named $name.";
  // }
}
