import 'package:core/core.dart';

abstract class NewRecordState extends Equatable {
  const NewRecordState();
}

class NewRecordContent extends NewRecordState {
  const NewRecordContent();

  @override
  List<Object> get props => <Object>[];
}

class NewRecordError extends NewRecordState {
  const NewRecordError();

  @override
  List<Object> get props => <Object>[];
}
