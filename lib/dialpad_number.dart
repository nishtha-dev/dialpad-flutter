import 'dart:ui';

import 'package:flutter/material.dart';

class DialpadButton extends StatelessWidget {
  Function updateNumber;
  String digit;

  DialpadButton({this.digit, this.updateNumber});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => updateNumber(digit),
        child: Center(
            child: Text(
          digit,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
