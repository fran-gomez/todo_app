import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todo_app/screens/calendar_view/event_viewer.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 250,
            //margin: EdgeInsets.symmetric(horizontal: 5),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(width: 0.8),
              borderRadius: BorderRadius.only(
                //topLeft: Radius.circular(10.0),
                //topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
            ),
            child: Text(
              'Wake me up at:\n HH:MM',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 30,
            height: 30,
            //margin: EdgeInsets.only(bottom: 10, left: 10),
            child: FloatingActionButton(
              child: Icon(Icons.add_alarm),
              onPressed: () {
                print("Add");
              },
            ),
          ),
          Flexible(
            child: ListView(
              padding: EdgeInsets.all(5),
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.8),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: ListTile(
                    title: Text('Comprar algo'),
                    onTap: () => print(''),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.8),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: ListTile(
                    title: Text('Ir a algun lado'),
                    onTap: () => print(''),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.8),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: ListTile(
                    title: Text('Hacer algo'),
                    onTap: () => print(''),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.8),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: ListTile(
                    title: Text('Llamar a alguien'),
                    onTap: () => print(''),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
