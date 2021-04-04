import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class TimePicker extends StatefulWidget {
  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  final format = DateFormat("HH:mm");

  DateTime _currentTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 350,
      margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              DatePicker.showTimePicker(
                context,
                showTitleActions: true,
                onChanged: (date) {
                  print('change $date in time zone ' +
                      date.timeZoneOffset.inHours.toString());
                },
                onConfirm: (date) {
                  print('confirm $date');
                  _currentTime = date;
                },
                currentTime: DateTime.now(),
              );
            },
            child: Text(
              'Select time',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Text(
            DateFormat("HH:MM:ss").format(_currentTime),
          ),
        ],
      ),
    );
  }
}
