import 'package:core/core.dart';

import 'influencer.dart';

class Influence extends Equatable {
  final Influencer influencer;
  final double value;

  const Influence({
    required this.influencer,
    required this.value,
  });

  @override
  List<Object> get props => <Object>[
        influencer,
        value,
      ];
}
