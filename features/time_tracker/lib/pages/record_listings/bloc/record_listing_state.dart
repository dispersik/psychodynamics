import 'package:core/core.dart';
import 'package:domain/domain.dart';

abstract class RecordListingState extends Equatable {
  const RecordListingState();
}

class RecordListingContent extends RecordListingState {
  final List<TimeTrackingRecord> records;

  const RecordListingContent({
    required this.records,
  });

  @override
  List<Object?> get props => <Object>[
        records,
      ];
}

class RecordListingError extends RecordListingState {
  final String errorMessage;

  const RecordListingError({
    required this.errorMessage,
  });

  @override
  List<Object?> get props => <Object>[
        errorMessage,
      ];
}

class RecordListingLoading extends RecordListingState {
  const RecordListingLoading();

  @override
  List<Object?> get props => <Object>[];
}
