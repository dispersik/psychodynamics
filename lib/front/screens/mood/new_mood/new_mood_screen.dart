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
    moodRepository: MoodRepositoryImpl(dbProvider: SQLiteProvider()),
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
        backgroundColor: Color(0xFF4739D2),
        title: Text('Новая запись'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveMoodEvent,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 24),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  cursorColor: Color(0xFF4739D2),
                  onSubmitted: (String text) {
                    widget.moodController.title = text;
                  },
                  controller: widget.titleController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 0,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    labelText: 'Заметка',
                    labelStyle: TextStyle(
                      fontFamily: 'Raleway',
                      color: Color(0xFF4739D2).withOpacity(0.8),
                      fontSize: 16,
                    ),
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SliderUnit(
            title: 'Общая оценка',
            value: widget.moodController.overallFeeling,
            onChanged: (double value) => setState(
              () => widget.moodController.overallFeeling = value,
            ),
          ),
          SliderUnit(
            title: 'Социальные взаимодействия',
            startScaleComment: 'низкий уровень',
            endScaleComment: 'высокий уровень',
            value: widget.moodController.socialInteraction,
            onChanged: (double value) {
              setState(() {
                widget.moodController.socialInteraction = value;
              });
            },
          ),
          SliderUnit(
            title: 'Энергичность',
            value: widget.moodController.energy,
            onChanged: (double value) {
              setState(() {
                widget.moodController.energy = value;
              });
            },
          ),
          SliderUnit(
            title: 'Вовлеченность',
            value: widget.moodController.studying,
            onChanged: (double value) {
              setState(() {
                widget.moodController.studying = value;
              });
            },
          ),
          SliderUnit(
            title: 'Голод',
            startScaleComment: 'низкий уровень',
            endScaleComment: 'высокий уровень',
            value: widget.moodController.hunger,
            onChanged: (double value) {
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
