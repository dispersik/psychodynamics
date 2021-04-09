import 'package:flutter/cupertino.dart';
import 'package:psychodynamics/back/entities/question.dart';
import 'package:psychodynamics/front/screens/tests/test_form/option_tile.dart';

class QuestionForm extends StatefulWidget {
  QuestionForm({
    required this.question,
    required this.onTap,
    this.indexOfSelectedOption = -1,
  });

  final void Function(int) onTap;
  final Question question;
  int indexOfSelectedOption;

  @override
  _QuestionFormState createState() => _QuestionFormState();
}

class _QuestionFormState extends State<QuestionForm> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(widget.question.title, style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          for (int i = 0; i < widget.question.options.length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
              child: OptionTile(
                isEnabled: widget.indexOfSelectedOption == i,
                option: widget.question.options[i],
                onTap: (value) {
                  setState(() {
                    widget.indexOfSelectedOption = i;
                  });
                  widget.onTap(value);
                },
              ),
            ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
