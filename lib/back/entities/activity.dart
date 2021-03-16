import 'package:flutter/cupertino.dart';
import 'package:psychodynamics/back/entities/influencer.dart';

class Activity extends Influencer {
  Activity({@required name, @required iconName})
      :super(name: name, iconName: iconName, type: InfluencerTypes.activity);
}