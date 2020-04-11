import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notification'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(122, 207, 122, 1),
        ),
        body: SafeArea(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
              Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.message,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      'Reza',
                      style: TextStyle(fontFamily: 'BalooBhai', fontSize: 20.0),
                    ),
                  )),
              Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.message,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      'Sakib',
                      style: TextStyle(fontFamily: 'BalooBhai', fontSize: 20.0),
                    ),
                  )),
              Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.message,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      'Akib',
                      style: TextStyle(fontFamily: 'BalooBhai', fontSize: 20.0),
                    ),
                  )),
            ]),
          ),
        ));
  }
}
