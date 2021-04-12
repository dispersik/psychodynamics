import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderUnit extends StatelessWidget {
  const SliderUnit({
    required this.title,
    required this.value,
    required this.onChanged,
    this.startScaleComment = 'low',
    this.endScaleComment = 'high',
  });

  final String title;
  final String startScaleComment;
  final String endScaleComment;
  final double value;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    color: Colors.red[600],
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Slider(
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
    );
  }
}
