import 'package:flutter/cupertino.dart';
import 'package:psychodynamics/back/entities/influencing_feature.dart';
import 'package:psychodynamics/back/entities/item.dart';

enum InfluencerTypes {
  person, activity, entity
}

class Influencer extends Item {
  Influencer({required name, required iconName, this.type, this.features})
      : super(name: name, iconName: iconName);
  InfluencerTypes? type = InfluencerTypes.entity;
  List<InfluencingFeature>? features;
}
