import 'package:flutter/cupertino.dart';
import 'package:psychodynamics/back/entities/influencer.dart';

class Person extends Influencer {
  Person({required name, required iconName, features})
      : super(
            name: name,
            iconName: iconName,
            type: InfluencerTypes.person,
            features: features);
}
