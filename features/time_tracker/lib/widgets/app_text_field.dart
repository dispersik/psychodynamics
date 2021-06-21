import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const AppTextField({
    required this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
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
            controller: controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 0,
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              labelText: label,
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
    );
  }
}
