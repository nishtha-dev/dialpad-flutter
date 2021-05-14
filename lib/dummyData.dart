import 'package:dialpad/dummyDataList.dart';
import 'package:flutter/material.dart';

// class FilteredOutput extends StatefulWidget {
//   String number;
//   FilteredOutput({this.number});

//   @override
//   _FilteredOutputState createState() => _FilteredOutputState();
// }

// class _FilteredOutputState extends State<FilteredOutput> {
//   List<DummyDataList> filteredNumbers = [];

//   Widget isMatchString() {
//     print('executed');
//     for (var i = 0; i < numbers.length; i++) {
//       if (numbers[i].phoneNumber.matchAsPrefix(widget.number, 0) != null) {
//         setState(() {
//           filteredNumbers.add(numbers[i]);
//         });
//       }
//     }
//     print(filteredNumbers);
//     return ListView.builder(
//         itemCount: filteredNumbers.length,
//         itemBuilder: (BuildContext context, index) {
//           return ListTile(
//             onTap: () {},
//             title: Text(filteredNumbers[index].name),
//             subtitle: Text(filteredNumbers[index].phoneNumber),
//             leading: CircleAvatar(
//               backgroundImage: NetworkImage(
//                   'https://thumbs.dreamstime.com/z/default-avatar-profile-flat-icon-vector-contact-symbol-illustration-184752213.jpg'),
//             ),
//           );
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isMatchString();
//   }
// }

class DummyData extends StatefulWidget {
  String number;
  DummyData({this.number = ''});
  String abcd = '1234';

  @override
  _DummyDataState createState() => _DummyDataState();
}

class _DummyDataState extends State<DummyData> {
  List<DummyDataList> filteredNumbers = [];
  List<DummyDataList> setNumbersList = [];

  void isStringMatch() {
    print(numbers.length);

    for (var i = 0; i < numbers.length; i++) {
      print(numbers[i].phoneNumber);
      print('abcd : ${widget.abcd.contains('9')}');
      if (numbers[i].phoneNumber.contains(widget.number)) {
        setState(() {
          filteredNumbers.add(numbers[i]);
        });
      }
    }
    setState(() {
      setNumbersList = (filteredNumbers != null) ? filteredNumbers : numbers;
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    isStringMatch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: ListView.builder(
          itemCount: setNumbersList.length,
          itemBuilder: (context, index) {
            // return (number != null && number.length != 0)
            //     ? FilteredOutput(number: number)
            //     :

            return ListTile(
              onTap: () {},
              title: Text(
                setNumbersList[index].name,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                setNumbersList[index].phoneNumber,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://thumbs.dreamstime.com/z/default-avatar-profile-flat-icon-vector-contact-symbol-illustration-184752213.jpg'),
              ),
            );
          }),
    );
  }
}
