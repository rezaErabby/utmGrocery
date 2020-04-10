import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('UTM Grocery'),
        centerTitle: true,
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: Text("Home page"),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
