import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestAnalyseScreen extends StatefulWidget {
  @override
  _TestAnalyseScreenState createState() => _TestAnalyseScreenState();
}

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
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Text(
                  '22222222222222222222222222323266666666464618461846182461246124721481264127468126418746184612487148768714681246174184',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )
              ],
            ),
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
