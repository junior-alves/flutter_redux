import 'package:flutter/material.dart';
import 'package:flutterreduxtest/app_screen.dart';

void main() {
  runApp(SimpleApp());
}

class SimpleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App Redux',
      theme: ThemeData(
        //brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: AppScreen(),
    );
  }
}
