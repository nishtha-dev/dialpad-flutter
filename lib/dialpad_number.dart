import 'dart:ui';

import 'package:dialpad/theme/colors.dart';
import 'package:flutter/material.dart';

class DialpadButton extends StatelessWidget {
  Function updateNumber;
  Function isStringMatch;
  String digit;

  DialpadButton({this.digit, this.updateNumber, this.isStringMatch});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          updateNumber(digit);
          isStringMatch();
        },
        child: Center(
            child: Text(
          digit,
          style: TextStyle(
            color: primaryColor,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
