import 'package:flutter/material.dart';

class DropDownClient extends StatefulWidget {
  @override
  _DropDownClientState createState() => _DropDownClientState();
}

class _DropDownClientState extends State<DropDownClient> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
      child: DropdownButton<String>(
        value: dropdownValue,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        underline: Container(
          height: 2,
        ),
        onChanged: (String? newvalue) {
          setState(() {
            dropdownValue = newvalue!;
          });
        },
        items: <String>['One', 'Client2', 'Client33333', 'Client4']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
