import 'package:flutter/material.dart';
import 'package:todo_app/screens/alarm_view/time_picker.dart';

class AlarmScreen extends StatefulWidget {
  @override
  _AlarmScreenState createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  bool _weatherReport = true;
  bool _stocksReport = false;
  bool _trafficReport = false;
  bool _remindEvents = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // Aca iria el time picker
          TimePicker(),
          // Aca un container con las distintas opciones del reporte inicial
          Expanded(
            child: ListView(
              children: [
                CheckboxListTile(
                  value: _weatherReport,
                  onChanged: (bool newValue) {
                    setState(() => {
                          _weatherReport = !_weatherReport,
                        });
                  },
                  title: Text("Weather report"),
                ),
                CheckboxListTile(
                  value: _stocksReport,
                  onChanged: (bool newValue) {
                    setState(() => {
                          _stocksReport = !_stocksReport,
                        });
                  },
                  title: Text("Stocks report"),
                ),
                CheckboxListTile(
                  value: _trafficReport,
                  onChanged: (bool newValue) {
                    setState(() => {
                          _trafficReport = !_trafficReport,
                        });
                  },
                  title: Text("Traffic report"),
                ),
                CheckboxListTile(
                  value: _remindEvents,
                  onChanged: (bool newValue) {
                    setState(() => {
                          _remindEvents = !_remindEvents,
                        });
                  },
                  title: Text("Remind events"),
                ),
              ],
            ),
          ),
          // Botones Cancelar y Aceptar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () {
                  _remindEvents = false;
                  _stocksReport = false;
                  _trafficReport = false;
                  print('Cancel');
                },
                child: Text('Cancel'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () {
                  print('Done');
                },
                child: Text('Done'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
