import 'package:dialpad/dummyDataList.dart';
import 'package:dialpad/theme/colors.dart';
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
  List<DummyDataList> setNumbersList;
  List<DummyDataList> setNameList;
  DummyData({this.number = '', this.setNumbersList, this.setNameList});
  List<DummyDataList> updateList() {
    setNumbersList.addAll(setNameList);
    return setNumbersList;
  }
  //String abcd = '1234';

  @override
  _DummyDataState createState() => _DummyDataState();
}

class _DummyDataState extends State<DummyData> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: (widget.updateList().isEmpty)
          ? Container(
              alignment: Alignment.topCenter,
              child: Text(
                'No search found 🤷 😅',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            )
          : ListView.builder(
              itemCount: widget.updateList().length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {},
                  title: Text(
                    widget.updateList()[index].name,
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  subtitle: Text(
                    widget.updateList()[index].phoneNumber,
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  leading: CircleAvatar(
                    //
                    child: Text(
                      widget.updateList()[index].name[0].toUpperCase(),
                      style: TextStyle(
                        color: accent1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor: primaryColor,
                  ),
                );
              }),
    );
  }
}
