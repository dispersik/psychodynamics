import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleOptionButton extends StatefulWidget {
  CircleOptionButton({Key? key, this.onSelected, this.size=30}) : super(key: key);

  bool isSelected = false;
  final num size;
  final void Function()? onSelected;

  _CircleOptionButtonState createState() => _CircleOptionButtonState();
}

class _CircleOptionButtonState extends State<CircleOptionButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            print('tap');
            widget.isSelected = !widget.isSelected;
          });
          if (widget.isSelected) widget.onSelected!();
        },
        child: Container(
          width: widget.size.toDouble(),
          height: widget.size.toDouble(),
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
          child: Padding(
            padding: EdgeInsets.all(26),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color:
                      (widget.isSelected) ? Colors.white : Colors.transparent,
                  shape: BoxShape.circle),
            ),
          ),
        ),
      ),
    );
  }
}
