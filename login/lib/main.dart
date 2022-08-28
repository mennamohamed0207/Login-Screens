import 'package:flutter/material.dart';
import 'package:login/second.dart';
import 'package:login/welcomepage.dart';

import 'home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: _title,
      // ignore: prefer_const_constructors
      home: Scaffold(
        body: const MyStatefulWidgetsecondscreen(),
      ),
    );
  }
}




