import 'package:flutter/cupertino.dart';
import 'package:psychodynamics/back/entities/emotion.dart';
import 'package:psychodynamics/back/entities/influencer.dart';

// enum GeneralStates { reallyBad, bad, ok, good, perfect }

// Map <GeneralStates, String> _generalStatesToString = {
//   GeneralStates.reallyBad: 'Really bad',
//   GeneralStates.bad: 'Bad',
//   GeneralStates.ok: 'Ok',
//   GeneralStates.good: 'Feeling good',
//   GeneralStates.perfect: 'Perfect!'
// };

// Map <GeneralStates, int> _generalGradingScale = {
//   GeneralStates.bad: (((MoodRecord.generalScale - 1) / 2).round() /
//       (((_generalStatesToString.length - 1) / 2).round())*1).round(),
//   GeneralStates.reallyBad:,
// };

class MoodRecord {
  MoodRecord({this.comment,
    required this.influencers,
    required this.emotions, this.dt}) {
    dt = DateTime.now();
  }

  // TODO create class SliderFeature

  static int generalScale = 201;

  // static int generalMax = ((generalScale-1)/2).round();
  // static int generalMin = -((generalScale-1)/2).round();

  // describes what user generally feels
  // -100 <= generalValue <= 100
  int? generalValue;

  // TODO add this feature later
  // int socialInteractions;
  String? comment;
  List<Influencer> influencers;
  List<Emotion> emotions;
  DateTime? dt /*= DateTime.now()*/;

  String get textForTile => general;

  String get general {
    if (generalValue == 0) return 'ok';
    if (generalValue! > 0) {
      if (generalValue!<50) return 'good';
      return 'perfect';
    } else {
      if (generalValue!>-50) return 'bad';
      return 'really bad';
    }
  }
}
