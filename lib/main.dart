import 'package:flutter/material.dart';
import 'Problem01.dart';
import 'ColorsOfMyLife.dart';
import 'Problem02.dart';
import 'Problem03.dart';
import 'Problem04.dart';
import 'Problem05.dart';
import 'Problem06.dart';
import 'Problem07.dart';
import 'Problem08.dart';
import 'Problem09.dart';
import 'Problem10.dart';
import 'Problem11.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      // home: const Problem01(),
      // home: const Problem02(),
      // home: const Problem03(),
      // home: const Problem04(),
      // home: const Problem05(),
      // home: const Problem06(),
      // home: const Problem07(),
      // home: const Problem08(),
      // home: const Problem09(),
      // home: const Problem10(),
      home: const Problem11(),
    );
  }
}