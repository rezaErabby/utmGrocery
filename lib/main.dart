import 'dart:js';

import 'package:flutter/material.dart';
import 'package:utmgrocery/Pages/home.dart';
import 'package:utmgrocery/Pages/profile.dart';
import 'package:utmgrocery/Pages/register.dart';
import 'package:utmgrocery/Pages/settings.dart';
import 'package:utmgrocery/Pages/splash.dart';
import 'package:utmgrocery/Pages/login.dart';
import 'package:utmgrocery/Pages/notification.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/home': (context) => Home(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/profile': (context) => Profile(),
        '/settings':(context) => Settings(),
        '/notification':(context) => Notifications(),
      },
    ));
