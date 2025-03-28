import 'package:flutter/material.dart';

void main() {
  runApp(Problem17());
}

class Problem17 extends StatefulWidget {
  const Problem17({super.key});

  @override
  _Problem17State createState() => _Problem17State();
}

class _Problem17State extends State<Problem17> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Problem 17')),
          backgroundColor: Colors.purple[100],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enable Dark Mode:',
                style: TextStyle(fontSize: 18),
              ),
              Switch(
                value: isDarkMode,
                onChanged: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                },
              ),
              Text(
                isDarkMode ? 'Dark Mode is ON' : 'Dark Mode is OFF',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
