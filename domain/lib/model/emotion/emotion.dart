import 'package:core/core.dart';

class Emotion extends Equatable {
  final String name;

  const Emotion({
    required this.name,
  });

  @override
  List<Object?> get props => <Object?>[
        name,
      ];
}
