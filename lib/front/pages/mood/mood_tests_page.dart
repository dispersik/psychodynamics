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
              url: 'https://experimental-psychic.ru/test-kettella-forma-a/#a4',
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: MediaQuery.of(context).size.width * .9,
              height: MediaQuery.of(context).size.height * .2,
              color: Colors.blueGrey,
              child: Center(child: Text('Тест Люшера')),
            ),
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
      body: ListView.builder(
          itemCount: _children.length,
          itemBuilder: (context, index) {
            return _children[index];
          }),
    );
  }
}
