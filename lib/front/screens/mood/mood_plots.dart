// import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:psychodynamics/back/injector.dart';
import 'package:psychodynamics/front/screens/mood/bloc/mood_bloc.dart';
import 'package:psychodynamics/front/screens/mood/bloc/mood_state.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MoodPlotsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final series = <int>[
      3,
      5,
      4,
      6,
      4,
      8,
      6,
    ];
    final dates = <String>[
      'Пн',
      'Вт',
      'Ср',
      'Чт',
      'Пт',
      'Сб',
      'Вс',
    ];
    return BlocBuilder<MoodBloc, MoodState>(
      bloc: injector.get<MoodBloc>(),
      builder: (BuildContext context, MoodState state) {
        if (state is MoodLoaded) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Динамика настроения'),
              backgroundColor: Color(0xFF4739D2),
            ),
            body: ListView(
              children: [
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     // decoration: BoxDecoration(
                //     //   color: Colors.grey[400],
                //     //   borderRadius: BorderRadius.circular(10),
                //     // ),
                //     child: Column(
                //       children: [
                //         Text('Text'),
                //         Container(
                //           width: MediaQuery.of(context).size.width * .9,
                //           height: MediaQuery.of(context).size.height * .3,
                //           child: SingleChildScrollView(
                //             scrollDirection: Axis.horizontal,
                //             child: Container(
                //               width: MediaQuery.of(context).size.width * 0.9,
                //               child: Padding(
                //                 padding: const EdgeInsets.all(8.0),
                //                 child: LineChart(data),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   color: Colors.grey[400],
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    child: Column(
                      children: [
                        Text('Настроение в течении недели'),
                        Container(
                          width: MediaQuery.of(context).size.width * .9,
                          height: MediaQuery.of(context).size.height * .3,
                          child: SfCartesianChart(
                            series: <ChartSeries>[
                              LineSeries<MoodRecordView, String>(
                                color: Color(0xFF4739D2),
                                dataSource: [
                                  MoodRecordView('Пн', 5),
                                  MoodRecordView('Вт', 3),
                                  MoodRecordView('Ср', 4),
                                  MoodRecordView('Чт', 2),
                                  MoodRecordView('Пт', 5),
                                ],
                                xValueMapper: (MoodRecordView sales, _) =>
                                    sales.weekday,
                                yValueMapper: (MoodRecordView sales, _) =>
                                    sales.state,
                              ),
                              AreaSeries<MoodRecordView, String>(
                                color: Color(0xFF4739D2).withOpacity(0.5),
                                pointColorMapper: (_, __) => Color(0xFF4739D2),
                                dataSource: [
                                  MoodRecordView('Пн', 5),
                                  MoodRecordView('Вт', 3),
                                  MoodRecordView('Ср', 4),
                                  MoodRecordView('Чт', 2),
                                  MoodRecordView('Пт', 5),
                                ],
                                xValueMapper: (MoodRecordView sales, _) =>
                                    sales.weekday,
                                yValueMapper: (MoodRecordView sales, _) =>
                                    sales.state,
                              ),
                              AreaSeries<MoodRecordView, String>(
                                color: Color(0xFFF6A61E).withOpacity(0.5),
                                dataSource: [
                                  MoodRecordView('Пт', 5),
                                  MoodRecordView('Cб', 7),
                                  MoodRecordView('Вс', 6),
                                ],
                                xValueMapper: (MoodRecordView sales, _) =>
                                    sales.weekday,
                                yValueMapper: (MoodRecordView sales, _) =>
                                    sales.state,
                              ),
                              LineSeries<MoodRecordView, String>(
                                color: Color(0xFFF6A61E),
                                dataSource: [
                                  MoodRecordView('Пт', 5),
                                  MoodRecordView('Cб', 7),
                                  MoodRecordView('Вс', 6),
                                ],
                                xValueMapper: (MoodRecordView sales, _) =>
                                    sales.weekday,
                                yValueMapper: (MoodRecordView sales, _) =>
                                    sales.state,
                              ),
                            ],
                            primaryXAxis: CategoryAxis(
                                // labelRotation: 90,
                                // title: AxisTitle(
                                //   text: 'День недели',
                                //   textStyle: TextStyle(
                                //     color: Colors.black54,
                                //     fontFamily: 'Roboto',
                                //     fontSize: 16,
                                //     fontWeight: FontWeight.w300,
                                //   ),
                                // ),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFF4739D2).withOpacity(.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF4739D2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text('История'),
                              SizedBox(width: 20,),

                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF6A61E),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text('Прогноз'),
                              SizedBox(width: 20,),

                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}

class MoodRecordView {
  final String weekday;
  final int state;

  MoodRecordView(this.weekday, this.state);
}
