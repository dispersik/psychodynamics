class Mood {
  Mood({
    required this.overallFeeling,
    required this.energy,
    required this.hunger,
    required this.socialInteraction,
    required this.studying,
    required this.dateTime,
    this.title,
  });

  Mood.fromMap(Map<String, dynamic> map)
      : overallFeeling = map['overallFeeling'] as double,
        energy = map['energy'] as double,
        studying = map['studying'] as double,
        socialInteraction = map['socialInteraction'] as double,
        dateTime = DateTime.parse(map['dt'].toString()),
        hunger = map['hunger'] as double,
        title = map['title'] as String?;

  final double overallFeeling;
  final double hunger;
  final double socialInteraction;
  final double energy;
  final double studying;
  final String? title;
  final DateTime dateTime;

  Map<String, Object?> toMap() => <String, Object?>{
        'overallFeeling': overallFeeling,
        'title': title,
        'energy': energy,
        'studying': studying,
        'socialInteraction': socialInteraction,
        'hunger': hunger,
        'dt': dateTime.toString()
      };
}
