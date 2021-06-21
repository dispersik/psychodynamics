import 'package:flutter/material.dart';

class DemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Color(0xFF4739D2),
      title: Text(
        "Demo",
        textAlign: TextAlign.end,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w300,
        ),
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
                // Navigator.push(
                //     context,
                //     CupertinoPageRoute(
                //         builder: (BuildContext context) =>
                //             TestListingScreen()));
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
                        'Test View',
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
                // Navigator.push(
                //   context,
                //   CupertinoPageRoute(
                //     builder: (context) => TestAnalyseScreen(),
                //   ),
                // );
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
                      'Graph',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),GestureDetector(
              onTap: () async {
                // Navigator.push(
                //   context,
                //   CupertinoPageRoute(
                //     builder: (context) => TestAnalyseScreen(),
                //   ),
                // );
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
                      'Mood Record',
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
      ),);
  }
}