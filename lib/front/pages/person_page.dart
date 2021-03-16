import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psychodynamics/front/widgets/app_bar.dart';

class PersonPage extends StatefulWidget {
  static const String routeName = '/personPage';
  @override
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ,
      bottomNavigationBar: CustomAppBar(),
    );
  }
}