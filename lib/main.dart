import 'package:flutter/material.dart';
import 'Problem01.dart';
import 'Problem02.dart';
import 'Problem08.dart';

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
      // Uncomment the file which one you want to run from here.
    
      // home: const Problem01(),
      // home: const Problem02(),
      // home: const Problem03(),
      // home: const Problem04(),
      // home: const Problem05(),
      // home: const Problem06(),
      // home: const Problem07(),
      home: const Problem08(),
      // home: const Problem09(),
      // home: const Problem10(),
      // home: const Problem11(),
      // home: const Problem12(),
      // home: const Problem13(),
      // home: const Problem14(),
      // home: const Problem15(),
      // home: const Problem16(),
      // home: const Problem17(),
      // home: const Problem18(),
      // home: const Problem19(),


    );
  }
}