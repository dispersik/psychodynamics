import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psychodynamics/back/entities/test.dart';

class TestTile extends StatelessWidget {
  TestTile({required this.test, required this.onTap});

  final Test test;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      test.name,
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                    ),
                  ],
                ),
                Container(
                  color: Colors.black26,
                  height: 2,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.timelapse,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Estimated time:'
                          ' ${test.estimatedCompletionTimeInMinutes} min'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.article, size: 20,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('${test.numberOfQuestions} questions'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
