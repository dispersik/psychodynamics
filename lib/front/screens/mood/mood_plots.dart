import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:psychodynamics/back/injector.dart';
import 'package:psychodynamics/front/screens/mood/bloc/mood_bloc.dart';
import 'package:psychodynamics/front/screens/mood/bloc/mood_state.dart';
import 'package:tflite/tflite.dart';

class MoodPlotsScreen extends StatelessWidget {
  LineChartData data = LineChartData(
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0, 3),
          FlSpot(2.6, 2),
          FlSpot(4.9, 5),
          FlSpot(6.8, 3.1),
          FlSpot(8, 4),
          FlSpot(9.5, 3),
          FlSpot(11, 4),
        ],
        isCurved: true,
        // colors: gradientColors,
        barWidth: 5,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: true,
          // colors:
          // gradientColors.map((color) => color.withOpacity(0.3)).toList(),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoodBloc, MoodState>(
      bloc: injector.get<MoodBloc>(),
      builder: (context, state) {
        if (state is MoodLoaded) {
          // Tflite.
          return Scaffold(
            appBar: AppBar(),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .3,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 2.9,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: LineChart(data),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return Scaffold();
      },
    );
  }
}
