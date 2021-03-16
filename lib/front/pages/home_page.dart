import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psychodynamics/front/widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}):super(key: key);

  static const routeName = '/home';

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomAppBar()
    );
  }
}