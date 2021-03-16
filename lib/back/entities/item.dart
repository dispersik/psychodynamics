import 'package:flutter/cupertino.dart';

abstract class Item {
  Item({@required this.iconName, @required this.name});

  String name;
  String iconName;
}
