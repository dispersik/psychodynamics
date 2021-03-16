import 'package:flutter/cupertino.dart';
import 'package:psychodynamics/back/entities/item.dart';

enum InfluencerTypes {
  person, activity, entity
}

class Influencer extends Item {
  Influencer({@required name, @required iconName, this.type})
      : super(name: name, iconName: iconName);
  InfluencerTypes type = InfluencerTypes.entity;
}
