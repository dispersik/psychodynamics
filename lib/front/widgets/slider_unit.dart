import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderUnit extends StatelessWidget {
  const SliderUnit({
    required this.title,
    required this.value,
    required this.onChanged,
    this.startScaleComment = 'низкая',
    this.endScaleComment = 'высокая',
  });

  final String title;
  final String startScaleComment;
  final String endScaleComment;
  final double value;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Color(0xFF4739D2).withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Color(0xFF4739D2),
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Slider(
              activeColor: Color(0xFF4739D2),
              inactiveColor: Color(0xFF4739D2).withOpacity(0.1),
              value: value,
              onChanged: onChanged,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        startScaleComment,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        endScaleComment,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
