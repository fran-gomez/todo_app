import 'package:flutter/material.dart';

class EventPreview extends StatefulWidget {
  final String _title;
  final DateTime _deadline;
  DateTime _nextReminder;
  final String _description;
  bool _completed;

  EventPreview(this._title, this._deadline, this._description) {
    this._nextReminder = this._deadline.add(Duration(hours: 3));
    this._completed = false;
  }

  @override
  _EventPreviewState createState() => _EventPreviewState();
}

class _EventPreviewState extends State<EventPreview> {
  Color _color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: _color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
          bottomLeft: Radius.circular(10.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(
              widget._title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            widget._description,
          ),
          Text(
            widget._deadline.toString(),
          ),
        ],
      ),
    );
  }
}
