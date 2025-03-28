import 'package:flutter/material.dart';

class Problem12 extends StatelessWidget {
  const Problem12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Problem 12')),
        backgroundColor: Colors.lightBlue[200],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 55),
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.lightBlue.withOpacity(0.9), 
                blurRadius: 60, 
                offset: Offset(5, 5), 
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Mehedi Hasan Hridoy',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
