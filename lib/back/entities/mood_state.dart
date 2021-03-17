import 'package:flutter/cupertino.dart';
import 'package:psychodynamics/back/entities/emotion.dart';
import 'package:psychodynamics/back/entities/influencer.dart';

class MoodRecord {
  MoodRecord(
      {@required this.title,
      @required this.comment,
      @required this.influencers,
      @required this.emotions});

  String title;
  String comment;
  List<Influencer> influencers;
  List<Emotion> emotions;
}
