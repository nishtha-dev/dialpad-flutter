import 'dart:ui';

import 'package:dialpad/display.dart';
import 'package:dialpad/dummyData.dart';
import 'package:dialpad/dummyDataList.dart';
import 'package:dialpad/theme/colors.dart';

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
  List<DummyDataList> filteredNumbers = [];
  List<DummyDataList> setNumbersList = numbers;
  List<DummyDataList> emptyList = [];

  void updateNumber(String i) {
    print('zz::::${filteredNumbers.length}');
    setState(() {
      filteredNumbers.clear();
      number += i;
    });
  }

  backspace() {
    setState(() {
      filteredNumbers.clear();
      number = number.substring(0, number.length - 1);
      // if (number.isEmpty) filteredNumbers.clear();
      isStringMatch();
    });
  }

  void isStringMatch() {
    //print(numbers.length);
    print("1filter:::${filteredNumbers.length}");
    for (var i = 0; i < numbers.length; i++) {
      //print(numbers[i].phoneNumber);
      // print('abcd : ${widget.abcd.contains('9')}');

      if (numbers[i].phoneNumber.contains(number)) {
        setState(() {
          print('nos:::${numbers[i].phoneNumber}');
          filteredNumbers.add(numbers[i]);
        });
      }
    }
    print("filter:::${filteredNumbers.length}");
    setState(() {
      print('set::${setNumbersList.length}');
      setNumbersList = (filteredNumbers.isEmpty)
          ? number == ''
              ? numbers
              : emptyList
          : filteredNumbers;
      print('set1::${setNumbersList.length}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accent1,
      appBar: AppBar(
        title: Text(
          //'Dialpad::${setNumbersList.length}',
          'DIALPAD',
          style: TextStyle(
            color: accent1,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DummyData(
              number: number,
              setNumbersList: setNumbersList,
            ),
            (number != null && number.length != 0)
                ? Display(number: number, backspace: backspace)
                : Container(),

            //Display(number: number, backspace: backspace),
            Divider(
              height: 20.0,
              color: primaryColor,
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
                        DialpadButton(
                            digit: '1',
                            updateNumber: updateNumber,
                            isStringMatch: isStringMatch),
                        DialpadButton(
                            digit: '2',
                            updateNumber: updateNumber,
                            isStringMatch: isStringMatch),
                        DialpadButton(
                            digit: '3',
                            updateNumber: updateNumber,
                            isStringMatch: isStringMatch),
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
                        DialpadButton(
                            digit: '4',
                            updateNumber: updateNumber,
                            isStringMatch: isStringMatch),
                        DialpadButton(
                            digit: '5',
                            updateNumber: updateNumber,
                            isStringMatch: isStringMatch),
                        DialpadButton(
                            digit: '6',
                            updateNumber: updateNumber,
                            isStringMatch: isStringMatch),
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
                        DialpadButton(
                            digit: '7',
                            updateNumber: updateNumber,
                            isStringMatch: isStringMatch),
                        DialpadButton(
                            digit: '8',
                            updateNumber: updateNumber,
                            isStringMatch: isStringMatch),
                        DialpadButton(
                            digit: '9',
                            updateNumber: updateNumber,
                            isStringMatch: isStringMatch),
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
                        DialpadButton(
                            digit: '*',
                            updateNumber: updateNumber,
                            isStringMatch: isStringMatch),
                        DialpadButton(
                            digit: '0',
                            updateNumber: updateNumber,
                            isStringMatch: isStringMatch),
                        DialpadButton(
                            digit: '#',
                            updateNumber: updateNumber,
                            isStringMatch: isStringMatch),
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
