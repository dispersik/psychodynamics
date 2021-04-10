import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psychodynamics/back/data/utilities/bdi_ru_parser.dart';
import 'package:psychodynamics/front/screens/tests/test_analyse/test_analyse_screen.dart';
import 'package:psychodynamics/front/screens/tests/test_listing/test_listing_screen.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreen createState() => _TestScreen();
}

class _TestScreen extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Scaffold(
        // backgroundColor: Colors.redAccent[100],
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Tests",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              GestureDetector(
                onTap: () async {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) =>
                              TestListingScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        border: Border.all(color: Colors.black26)),
                    child: Center(
                        child: Text(
                      'Take A Test',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 30,
                      ),
                    )),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => TestAnalyseScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        border: Border.all(color: Colors.black26)),
                    child: Center(
                      child: Text(
                        'Analyse Tests',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
