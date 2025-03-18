import 'package:flutter/material.dart';
import 'ColorsOfMyLife.dart';

class Problem01 extends StatelessWidget {
  const Problem01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Problem 01")),
        backgroundColor: const Color.fromARGB(255, 201, 224, 220), 
      ),
      body: Center(
        child: Text(
          "Hello World \nI am Mehedi",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 30,
            color: ColorsOfMyLife.accentColor, 
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
