import 'package:flutter/material.dart';
import 'ColorsOfMyLife.dart'; // Import custom colors

class Problem02 extends StatefulWidget {
  const Problem02({super.key});

  @override
  State<Problem02> createState() => _Problem02State();
}

class _Problem02State extends State<Problem02> {
  String displayText = 'Press the button below';

  void _updateText() {
    setState(() {
      displayText = 'Button Pressed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Problem 02'),),
        backgroundColor: const Color.fromARGB(255, 156, 211, 200), 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              displayText,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _updateText,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
