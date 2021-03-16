import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psychodynamics/front/ui_helper.dart';

class NewMoodPage extends StatefulWidget {
  static const routeName = '/newMoodPage';
  @override
  _NewMoodPageState createState() => _NewMoodPageState();
}

class _NewMoodPageState extends State<NewMoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              ExpansionTile(
                title: Text('Influencers'),
                children: [
                  Text('Some children'),
                  Text('Some children'),
                ],
              ),
              ExpansionTile(
                title: Text('Emotions'),
                children: [
                  Text('emotions'),
                ],
              ),
              ElevatedButton(onPressed: ()=>print("save button tap"), child: Text('Save button'))
            ],
          ),
        ),
      ),
    );
  }
}
