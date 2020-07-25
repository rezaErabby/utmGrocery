import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utmgrocery/models/User.dart';
import 'package:utmgrocery/services/auth.dart';
import 'package:utmgrocery/views/home.dart';

import 'package:utmgrocery/views/profile.dart';
import 'package:utmgrocery/views/register.dart';
import 'package:utmgrocery/views/settings.dart';
import 'package:utmgrocery/views/splash.dart';
import 'package:utmgrocery/views/login.dart';
import 'package:utmgrocery/views/notification.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Splash(),
          '/login': (context) => Login(),
          '/register': (context) => Register(),
          '/profile': (context) => Profile(),
          '/settings': (context) => Settings(),
          '/notification': (context) => Notifications(),
          '/home': (context) => Home(),
        },
      ),
    );
  }
}
