import 'package:flutter/material.dart';
import 'package:todo_app/screens/alarm_view/alarm_setup.dart';
import 'package:todo_app/screens/calendar_view/calendar_view.dart';
import 'package:todo_app/screens/home_view/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new HomeScreen(),
              new CalendarScreen(),
              new AlarmScreen(),
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.home),
              ),
              Tab(
                icon: new Icon(Icons.calendar_today),
              ),
              Tab(
                icon: new Icon(Icons.alarm),
              ),
            ],
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.red,
          ),
          //backgroundColor: Colors.black87,
        ),
      ),
    );
  }
}
