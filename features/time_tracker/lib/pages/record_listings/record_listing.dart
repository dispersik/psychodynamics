import 'package:core/core.dart';
import 'package:domain/model/time_tracker/time_tracking_record.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/pages/record_listings/bloc/record_listing_bloc.dart';
import 'package:time_tracker/pages/record_listings/bloc/record_listing_state.dart';
import 'package:time_tracker/widgets/app_text_field.dart';
import 'package:time_tracker/widgets/time_tracking_record_tile.dart';

class TimeTrackingRecordsListing extends StatelessWidget {
  final TextEditingController durationController = TextEditingController();
  final TextEditingController activityNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RecordListingBloc>(
      create: (BuildContext context) => RecordListingBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Time Tracking Records Listing'),
        ),
        body: BlocBuilder<RecordListingBloc, RecordListingState>(
          builder: (BuildContext context, RecordListingState state) {
            if (state is RecordListingContent) {
              return ListView.builder(
                padding: EdgeInsets.all(24),
                itemCount: state.records.length,
                itemBuilder: (BuildContext context, int index) {
                  final TimeTrackingRecord record = state.records[index];
                  return TimeTrackingRecordTile(record: record);
                },
              );
            } else {
              return SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
