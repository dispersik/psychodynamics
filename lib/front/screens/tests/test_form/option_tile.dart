import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psychodynamics/back/entities/question.dart';

class OptionTile extends StatefulWidget {
  OptionTile(
      {required this.option, required this.onTap, this.isEnabled = false});

  final Option option;
  final void Function(int) onTap;
  bool isEnabled;

  @override
  _OptionTileState createState() => _OptionTileState();
}

class _OptionTileState extends State<OptionTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> widget.onTap(widget.option.value),
      child: Container(
        child: Row(
          children: [
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (widget.isEnabled) ? Colors.green : Colors.grey,
              ),
            ),
            SizedBox(
              width: 14,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  widget.option.text,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
