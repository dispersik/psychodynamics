import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psychodynamics/back/entities/test.dart';
import 'package:psychodynamics/back/entities/test_entries.dart';
import 'package:psychodynamics/back/entities/test_entry.dart';
import 'package:psychodynamics/front/screens/tests/test_form/question_form.dart';

class TestForm extends StatefulWidget {
  TestForm({required this.test})
      : testEntries = TestEntries(
          entries: <TestEntry>[],
          dateTime: DateTime.now(),
          numberOfQuestions: test.numberOfQuestions,
        );

  final Test test;
  late PageView pageView;
  final PageController controller = PageController(initialPage: 0);
  final TestEntries testEntries;
  int pageNumber = 1;
  String? errorMessage;

  @override
  _TestFormState createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  @override
  void initState() {
    super.initState();
    widget.pageView = PageView(
      onPageChanged: (int index) => setState(() => widget.pageNumber = index+1),
      controller: widget.controller,
      children: [
        for (int index = 0; index < widget.test.numberOfQuestions; index++)
          QuestionForm(
              question: widget.test.questions[index],
              onTap: (int value) {
                if (widget.testEntries.isNotInEntries(index)) {
                  setState(() {
                    widget.testEntries.entries.add(
                      TestEntry(
                        value: value,
                        index: index,
                      ),
                    );
                  });
                }
                if (widget.controller.page !=
                        widget.test.questions.length - 1 &&
                    !widget.testEntries.isCompleted) {
                  widget.controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                }
              })
      ],
    );
  }

  static Route<Object?> _dialogFailBuilder(
      BuildContext context, Object? arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Test save error'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.warning,
              color: Colors.redAccent,
              size: 100,
            ),
            Text('Test is not finished'),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              if (widget.testEntries.isCompleted) {
                print('SAVE');
              } else {
                Navigator.of(context).restorablePush(_dialogFailBuilder);
              }
            },
          ),
        ],
        title: Text(
          widget.test.name,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: widget.pageView),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  widget.controller.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOutCubic,
                  );
                },
              ),
              Text(
                '${widget.pageNumber ?? 1}/${widget.test.numberOfQuestions}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios_outlined),
                onPressed: () {
                  widget.controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOutCubic,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
