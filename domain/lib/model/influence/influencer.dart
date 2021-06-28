import 'package:core/core.dart';

class Influencer extends Equatable {
  final String name;

  const Influencer({
    required this.name,
  });

  @override
  List<Object> get props => <Object>[
        name,
      ];
}
