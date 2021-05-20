import 'dart:ui';

import 'package:dialpad/theme/colors.dart';
import 'package:flutter/material.dart';

class DialpadButton extends StatelessWidget {
  Function updateNumber;
  Function isStringMatch;
  Function isNameStringMatch;
  String digit;

  DialpadButton(
      {this.digit,
      this.updateNumber,
      this.isStringMatch,
      this.isNameStringMatch});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          updateNumber(digit);
          isStringMatch();
          isNameStringMatch(int.parse(digit));
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
