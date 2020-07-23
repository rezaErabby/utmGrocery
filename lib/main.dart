import 'package:flutter/material.dart';
import 'package:utmgrocery/views/home.dart';
import 'package:utmgrocery/views/profile.dart';
import 'package:utmgrocery/views/register.dart';
import 'package:utmgrocery/views/settings.dart';
import 'package:utmgrocery/views/splash.dart';
import 'package:utmgrocery/views/login.dart';
import 'package:utmgrocery/views/notification.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/profile': (context) => Profile(),
        '/settings': (context) => Settings(),
        '/notification': (context) => Notifications(),
      },
    ));
