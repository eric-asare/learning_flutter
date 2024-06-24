// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hello_world/pages/home_page.dart';
import 'package:hello_world/pages/logout_page.dart';
import 'package:hello_world/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/homePage': (context) => HomePage(),
        '/settingsPage': (context) => SettingsPage(),
        '/logoutPage': (context) => LogoutPage()
      },
    );
  }
}
