import 'dart:ui';

import 'package:dialpad/theme/colors.dart';
import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  Display({
    Key key,
    @required this.number,
    this.backspace,
  }) : super(key: key);

  final String number;
  Function backspace;

  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 65),
                child: Text(
                  '${widget.number}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: (widget.number != null && widget.number.length != 0)
                  ? IconButton(
                      icon: Icon(Icons.backspace),
                      color: primaryColor,
                      onPressed: widget.backspace)
                  : Container(),
            )
          ],
        ),
      ),
    );
  }
}
