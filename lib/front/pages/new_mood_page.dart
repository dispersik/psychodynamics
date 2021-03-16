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
      backgroundColor: Theme
          .of(context)
          .backgroundColor,
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('New mood record', style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w700, color: Theme
                    .of(context)
                    .primaryColor),),
              ),
              ExpansionTile(
                title: Text('Influencers', style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w700, color: Theme
                    .of(context)
                    .primaryColor),),
                children: [
                  Text('Some children'),
                  Text('Some children'),
                ],
              ),
              ExpansionTile(
                title: Text('Emotions', style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w700, color: Theme
                    .of(context)
                    .primaryColor),),
                children: [
                  Text('emotions'),
                ],
              ),
              ElevatedButton(onPressed: () => print("save button tap"),
                  child: Text('Save mood record'))
            ],
          ),
        ),
      ),
    );
  }
}
