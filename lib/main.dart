import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: homePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/login',
      routes: {
        "/": (context) => const loginPage(),
        "/home": (context) => homePage(),
        "/login": (context) => const loginPage(),
      },
    );
  }
}
