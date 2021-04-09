import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psychodynamics/back/data/db/sqlite_provider.dart';
import 'package:psychodynamics/back/entities/test_info.dart';
import 'package:psychodynamics/front/screens/tests/test_form/test_form.dart';
import 'package:psychodynamics/front/screens/tests/test_listing/bloc/test_listing_bloc.dart';
import 'package:psychodynamics/front/screens/tests/test_listing/bloc/test_listing_event.dart';
import 'package:psychodynamics/front/screens/tests/test_listing/bloc/test_listing_state.dart';
import 'package:psychodynamics/front/widgets/test_tile.dart';

class TestListingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TestListingBloc>(
      create: (BuildContext context) => TestListingBloc(),
      child: BlocBuilder<TestListingBloc, TestListingState>(
          builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'All tests',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.file_copy_sharp),
                onPressed: () async {
                  // print('db stuff');
                  // final dbProvider = SQLiteProvider();
                  // print(
                  //   await (await dbProvider.getDBInstance('test_entries.db'))
                  //       .query("table"),
                  // );
                },
              ),
            ],
          ),
          body: _stateBuilder(context, state),
        );
      }),
    );
  }

  Widget _stateBuilder(BuildContext context, TestListingState state) {
    if (state is TestListingLoaded) {
      return Column(
        children: [
          for (var test in state.tests)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TestTile(
                test: test,
                onTap: () => Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => TestForm(
                      test: test,
                    ),
                  ),
                ),
              ),
            ),
        ],
      );
    }
    if (state is TestListingError) {
      return SizedBox.expand(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * .5,
                color: Colors.grey[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.warning,
                      size: MediaQuery.of(context).size.height * .3,
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          state.errorMessage,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
    if (state is TestListingLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    BlocProvider.of<TestListingBloc>(context).add(TestListingLoad());
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
