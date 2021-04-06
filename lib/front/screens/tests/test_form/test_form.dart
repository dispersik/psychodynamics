import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psychodynamics/back/entities/question.dart';
import 'package:psychodynamics/back/entities/test.dart';

class TestForm extends StatefulWidget {
  TestForm({required this.test});
  final Test test;
  late PageView pageView;
  @override
  _TestFormState createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  @override
  void initState() {
    super.initState();
    widget.pageView = PageView(
      children: [
        for (final q in widget.test.questions)

      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pageView,
    );
  }
}