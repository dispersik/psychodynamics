import 'package:flutter/cupertino.dart';
import 'package:psychodynamics/back/entities/question.dart';

class QuestionForm extends StatefulWidget {
  QuestionForm({required this.question, required this.onTap});

  final void Function(int) onTap;
  final Question question;

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
              Text(widget.question.title),
            ],
          ),
          SizedBox(height: 10,),
          for (final option in widget.question.options)

        ],
      ),
    );
  }
}
