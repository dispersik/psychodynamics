import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestAnalyseScreen extends StatefulWidget {
  @override
  _TestAnalyseScreenState createState() => _TestAnalyseScreenState();
}

final List<Color> gradientColors = [
  const Color(0xff23b6e6),
  const Color(0xff02d39a),
];


class _TestAnalyseScreenState extends State<TestAnalyseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Test Analysis',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: ListView(
        children: [
          Text(
            'Plot #1 AVG Test AVG Score vs Time',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 30,
            ),
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 2,
                      child: AspectRatio(
                        aspectRatio: 1.70,
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(2),
                            ),
                            color: Colors.grey/*Color(0xff232d37)*/,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 18.0, left: 12.0, top: 24, bottom: 12),
                            child: LineChart(
                              mainData(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Text(
            'Plot #2 Test Score vs AVG Mood',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            'Plot #3 Selected Test Score vs Time',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            'Plot #4 ',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            'Analyse Tests',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            'Analyse Tests',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}



LineChartData mainData() {
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawVerticalLine: true,
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 1,
        );
      },
      getDrawingVerticalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 1,
        );
      },
    ),
    titlesData: FlTitlesData(
      show: true,
      bottomTitles: SideTitles(
        showTitles: true,
        reservedSize: 22,
        getTextStyles: (value) => const TextStyle(
            color: Color(0xff68737d),
            fontWeight: FontWeight.bold,
            fontSize: 16),
        getTitles: (value) {
          switch (value.toInt()) {
            case 2:
              return 'MAR';
            case 5:
              return 'JUN';
            case 8:
              return 'SEP';
          }
          return '';
        },
        margin: 8,
      ),
      leftTitles: SideTitles(
        showTitles: true,
        getTextStyles: (value) => const TextStyle(
          color: Color(0xff67727d),
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        getTitles: (value) {
          switch (value.toInt()) {
            case 1:
              return '10k';
            case 3:
              return '30k';
            case 5:
              return '50k';
          }
          return '';
        },
        reservedSize: 28,
        margin: 12,
      ),
    ),
    borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d), width: 1)),
    minX: 0,
    maxX: 11,
    minY: 0,
    maxY: 6,
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
        colors: gradientColors,
        barWidth: 5,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: true,
          colors:
          gradientColors.map((color) => color.withOpacity(0.3)).toList(),
        ),
      ),
    ],
  );
}
