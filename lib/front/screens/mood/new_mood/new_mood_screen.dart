import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psychodynamics/back/data/db/sqlite_provider.dart';
import 'package:psychodynamics/back/data/repositories/mood_repository.dart';
import 'package:psychodynamics/back/mood_controller.dart';
import 'package:psychodynamics/front/widgets/slider_unit.dart';
import 'package:psychodynamics/interactors/mood_interactor.dart';

class NewMoodScreen extends StatefulWidget {
  final TextEditingController titleController = TextEditingController();
  final MoodController moodController = MoodController();
  final MoodInteractor moodInteractor = MoodInteractor(
    moodRepository: LocalMoodRepository(dbProvider: SQLiteProvider()),
  );
  bool isChanged = false;

  @override
  _NewMoodScreenState createState() => _NewMoodScreenState();
}

class _NewMoodScreenState extends State<NewMoodScreen> {
  void _saveMoodEvent() {
    widget.moodInteractor.addMood(widget.moodController.currentMood());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Mood'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveMoodEvent,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Title:',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      color: Colors.red[600],
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 22),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  onSubmitted: (text) {
                    widget.moodController.title = text;
                  },
                  controller: widget.titleController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SliderUnit(
            title: 'Overall Feeling',
            value: widget.moodController.overallFeeling,
            onChanged: (value) => setState(
              () => widget.moodController.overallFeeling = value,
            ),
          ),
          SliderUnit(
            title: 'Studying',
            value: widget.moodController.studying,
            onChanged: (value) {
              setState(() {
                widget.moodController.studying = value;
              });
            },
          ),
          SliderUnit(
            title: 'Social interaction',
            value: widget.moodController.socialInteraction,
            onChanged: (value) {
              setState(() {
                widget.moodController.socialInteraction = value;
              });
            },
          ),
          SliderUnit(
            title: 'Energy',
            value: widget.moodController.energy,
            onChanged: (value) {
              setState(() {
                widget.moodController.energy = value;
              });
            },
          ),
          SliderUnit(
            title: 'Hunger',
            value: widget.moodController.hunger,
            onChanged: (value) {
              setState(() {
                widget.moodController.hunger = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
