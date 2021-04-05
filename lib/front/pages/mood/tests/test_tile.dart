import 'package:flutter/cupertino.dart';

import 'circle_bar.dart';

class TestTile extends StatefulWidget {
  TestTile({Key? key, this.title, this.numberOfOptions}) : super(key: key);

  final String? title;
  int? value;
  final int? numberOfOptions;

  @override
  _TestTileState createState() => _TestTileState();
}

class _TestTileState extends State<TestTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  widget.title!,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CircleBar(
              numberOfOptions: widget.numberOfOptions,
              onSelected: (index) {
                setState(() {
                  widget.value = index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
