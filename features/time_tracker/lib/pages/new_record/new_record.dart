import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/pages/new_record/bloc/new_record_state.dart';
import 'package:time_tracker/widgets/app_text_field.dart';

import 'bloc/new_record_bloc.dart';
import 'bloc/new_record_event.dart';

class NewTimeTrackingRecordScreen extends StatelessWidget {
  final TextEditingController durationController = TextEditingController();
  final TextEditingController activityNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewRecordBloc>(
      create: (BuildContext context) => NewRecordBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('New Time Tracking Record'),
        ),
        body: BlocBuilder<NewRecordBloc, NewRecordState>(
          builder: (BuildContext context, NewRecordState state) {
            if (state is NewRecordContent) {
              return SingleChildScrollView(
                padding: EdgeInsets.all(24),
                child: Column(
                  children: <Widget>[
                    AppTextField(
                      label: 'Activity Name',
                      controller: activityNameController,
                    ),
                    AppTextField(
                      label: 'Duration in hours',
                      controller: durationController,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<NewRecordBloc>().add(
                              Save(
                                activityName: activityNameController.text,
                                durationInHours: durationController.text,
                              ),
                            );
                      },
                      child: Text('Save'),
                    )
                  ],
                ),
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
