import 'package:psychodynamics/back/entities/mood.dart';

class MoodController {
  MoodController({this.isEditable = true});

  bool isEditable;
  double _overallFeeling = 0.5;
  double _hunger = 0.5;
  double _socialInteraction = 0.5;
  double _energy = 0.5;
  double _studying = 0.5;
  String? _title;

  double get overallFeeling => _overallFeeling;

  double get hunger => _hunger;

  double get energy => _energy;

  double get studying => _studying;

  double get socialInteraction => _socialInteraction;

  set overallFeeling(double value) {
    if (isEditable) _overallFeeling = value;
  }

  set hunger(double value) {
    if (isEditable) _hunger = value;
  }

  set socialInteraction(double value) {
    if (isEditable) _socialInteraction = value;
  }

  set energy(double value) {
    if (isEditable) _energy = value;
  }

  set studying(double value) {
    if (isEditable) _studying = value;
  }

  set title(String value) {
    if (isEditable) _title = value;
  }

  Mood currentMood() {
    return Mood(
      overallFeeling: _overallFeeling,
      hunger: _hunger,
      socialInteraction: _socialInteraction,
      energy: _energy,
      studying: _studying,
      title: _title,
      dateTime: DateTime.now(),
    );
  }
}
