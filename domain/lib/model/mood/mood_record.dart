import 'package:core/core.dart';
import 'package:domain/model/influence/influence.dart';

class MoodRecord extends Equatable {
  final double overallFeeling;
  final double hunger;
  final double socialInteraction;
  final double energy;
  final double flowFeel;
  final String? title;
  final DateTime dateTime;

  final List<Influence>? influences;

  const MoodRecord({
    required this.overallFeeling,
    required this.hunger,
    required this.socialInteraction,
    required this.energy,
    required this.flowFeel,
    required this.dateTime,
    this.influences,
    this.title,
  });

  @override
  List<Object?> get props => <Object?>[
        overallFeeling,
        energy,
        socialInteraction,
        flowFeel,
        dateTime,
        title,
        influences,
        hunger,
      ];
}
