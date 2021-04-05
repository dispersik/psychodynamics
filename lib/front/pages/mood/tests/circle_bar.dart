import 'package:flutter/cupertino.dart';
import 'package:psychodynamics/front/pages/mood/tests/circle_option_button.dart';

class CircleBar extends StatefulWidget {
  CircleBar({required this.numberOfOptions, this.onSelected});

  final int? numberOfOptions;
  int? selectedItem;
  final void Function(int)? onSelected;

  _CircleBarState createState() => _CircleBarState();
}

class _CircleBarState extends State<CircleBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < widget.numberOfOptions!; i++)
          CircleOptionButton(
            onSelected: () {
              setState(() {
                widget.selectedItem = i;
              });
              widget.onSelected!(i);
            },
          ),
      ],
    );
  }
}
