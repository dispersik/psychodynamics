import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:psychodynamics/front/pages/mood/tests/test_view.dart';

class MoodTestsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _children = <Widget>[
      GestureDetector(
        onTap: () => Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => TestWebView(
              url: 'https://psytests.org/result?v=lus1Q1Fr3eFWmekLlg',
            ),
          ),
        ),
        child: ClipRect(
          child: Container(
            color: Colors.blueGrey,
            child: Text('Тест Люшера'),
          ),
        ),
      )
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text('Mood Tests'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return _children[index];
      }),
    );
  }
}
