import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  homePage({Key? key}) : super(key: key);
  final int days = 30;
  final String by = 'Rahul';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kar rha try yaar 😭😔'),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $by  "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
