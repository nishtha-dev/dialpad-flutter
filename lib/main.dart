import 'dart:ui';

import 'package:dialpad/display.dart';
import 'package:dialpad/dummyData.dart';

import 'package:flutter/material.dart';
import 'dialpad_number.dart';
//import 'display.dart';

void main() => runApp(MaterialApp(
      home: Dialpad(),
    ));

class Dialpad extends StatefulWidget {
  @override
  _DialpadState createState() => _DialpadState();
}

class _DialpadState extends State<Dialpad> {
  String number = '';
  void updateNumber(String i) {
    setState(() {
      number += i;
    });
  }

  backspace() {
    setState(() {
      number = number.substring(0, number.length - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Dialpad',
          style: TextStyle(
            color: Colors.grey[400],
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DummyData(),
            (number != null && number.length != 0)
                ? Display(number: number, backspace: backspace)
                : Container(),

            //Display(number: number, backspace: backspace),
            Divider(
              height: 20.0,
              color: Colors.white,
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        DialpadButton(digit: '1', updateNumber: updateNumber),
                        DialpadButton(digit: '2', updateNumber: updateNumber),
                        DialpadButton(digit: '3', updateNumber: updateNumber),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        DialpadButton(digit: '4', updateNumber: updateNumber),
                        DialpadButton(digit: '5', updateNumber: updateNumber),
                        DialpadButton(digit: '6', updateNumber: updateNumber),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        DialpadButton(digit: '7', updateNumber: updateNumber),
                        DialpadButton(digit: '8', updateNumber: updateNumber),
                        DialpadButton(digit: '9', updateNumber: updateNumber),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        DialpadButton(digit: '*', updateNumber: updateNumber),
                        DialpadButton(digit: '0', updateNumber: updateNumber),
                        DialpadButton(digit: '#', updateNumber: updateNumber),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
