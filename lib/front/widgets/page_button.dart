import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageButton extends StatelessWidget {
  PageButton({
    @required this.state,
    @required this.icon,
    /*@required */
    this.routeName,
  });

  final bool state;
  final Icon icon;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: icon,
        onPressed: () => Navigator.popAndPushNamed(context, routeName));
  }
}
