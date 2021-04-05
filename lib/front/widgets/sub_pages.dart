import 'package:flutter/cupertino.dart';

class SubPages extends StatefulWidget {
  SubPages({this.pages});

  List<Widget>? pages;

  _SubPagesState createState() => _SubPagesState();
}

class _SubPagesState extends State<SubPages> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        children: [
          NavigationUnits(widget.pages!),

        ],
      ),
    );
  }
}

enum NavigationUnitStates {
  empty, active, filled
}

class NavigationUnit {
  NavigationUnit(this.route);

  NavigationUnitStates state = NavigationUnitStates.empty;
  Widget route;
}

class NavigationUnits extends StatelessWidget {
  NavigationUnits(List<Widget> routes) {
    routes.forEach((route)=>units.add(NavigationUnit(route)));
    units[0].state = NavigationUnitStates.active;
  }

  final List<NavigationUnit> units = <NavigationUnit>[];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}