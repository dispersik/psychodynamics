import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewMoodScreen extends StatefulWidget {

  final TextEditingController titleController = TextEditingController();
  @override
  _NewMoodScreenState createState() => _NewMoodScreenState();
}

class _NewMoodScreenState extends State<NewMoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Mood'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Text(
                    'title:'.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      color: Colors.red[600],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextField(
                            controller: widget.titleController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}