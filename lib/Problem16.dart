import 'dart:math';
import 'package:flutter/material.dart';

class Problem16 extends StatefulWidget {
  const Problem16({super.key});

  @override
  _Problem16State createState() => _Problem16State();
}

class _Problem16State extends State<Problem16> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void _changeContainer() {
    setState(() {
      final random = Random();
      _width = random.nextInt(200).toDouble() + 50; 
      _height = random.nextInt(200).toDouble() + 50; 
      _color = Color.fromRGBO(
        random.nextInt(256), 
        random.nextInt(256), 
        random.nextInt(256), 
        1,
      ); 
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble()); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Problem 16')),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeContainer,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text("Change Container", style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
