import 'package:flutter/material.dart';

class Problem11 extends StatelessWidget {
  const Problem11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Problem 11')),
        backgroundColor: const Color.fromARGB(255, 236, 172, 193),

      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              Image.asset('assets/images/Pink Rose.jpg')
            ],
          ),
        ),
      ),


    );
  }
}