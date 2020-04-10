import 'package:flutter/material.dart';
import 'package:utmgrocery/Pages/profile.dart';
import 'package:utmgrocery/Pages/register.dart';
import 'package:utmgrocery/Pages/splash.dart';
import 'package:utmgrocery/Pages/login.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/profile': (context) => Profile(),
      },
    ));
