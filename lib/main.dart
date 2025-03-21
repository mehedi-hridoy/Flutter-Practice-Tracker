import 'package:flutter/material.dart';
import 'Problem01.dart';
import 'ColorsOfMyLife.dart';
import 'Problem02.dart';

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
      home: const Problem02(),
    );
  }
}