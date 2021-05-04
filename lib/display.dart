import 'dart:ui';

import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  Display({
    Key key,
    @required this.number,
    this.backspace,
  }) : super(key: key);

  final String number;
  Function backspace;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Text(
                '$number',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: (number != null && number.length != 0)
                  ? IconButton(
                      icon: Icon(Icons.backspace),
                      color: Colors.white,
                      onPressed: backspace)
                  : Container(),
            )
          ],
        ),
      ),
    );
  }
}
