import 'package:equatable/equatable.dart';

abstract class UseCase<T, Params> {
  T execute(Params params);
}

abstract class FutureUseCase<T, Params> {
  Future<T> execute(Params params);
}

abstract class StreamUseCase<T, Params> {
  Stream<T> execute(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => <Object>[];
}