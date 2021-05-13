import 'package:dialpad/dummyDataList.dart';
import 'package:flutter/material.dart';

class FilteredOutput extends StatelessWidget {
  String number;
  FilteredOutput({this.number});
  List<DummyDataList> filteredNumbers = [];

  Widget isMatchString() {
    for (var i = 0; i < numbers.length; i++) {
      if (numbers[i].phoneNumber.matchAsPrefix(number, 0) != null) {
        filteredNumbers.add(numbers[i]);
      }
    }
    return ListView.builder(
        itemCount: filteredNumbers.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            onTap: () {},
            title: Text(filteredNumbers[index].name),
            subtitle: Text(filteredNumbers[index].phoneNumber),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://thumbs.dreamstime.com/z/default-avatar-profile-flat-icon-vector-contact-symbol-illustration-184752213.jpg'),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return isMatchString();
  }
}

class DummyData extends StatelessWidget {
  String number;
  DummyData({this.number});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return (number != null && number.length != 0)
                ? FilteredOutput(number: number)
                : ListTile(
                    onTap: () {},
                    title: Text(numbers[index].name),
                    subtitle: Text(numbers[index].phoneNumber),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://thumbs.dreamstime.com/z/default-avatar-profile-flat-icon-vector-contact-symbol-illustration-184752213.jpg'),
                    ),
                  );
          }),
    );
  }
}
