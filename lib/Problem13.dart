import 'package:flutter/material.dart';

class Problem13 extends StatelessWidget {
  const Problem13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/2048px-Microsoft_logo.svg.png',
            height: 30,
          ),
        ),
        title: Text(
          'Microsoft',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // I will add functionality if needed
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Mehedi.jpg'),
              radius: 20,
            ),
          ),
        ],
      ),
      body: Center(child: Text(
        'Problem 13',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 30,
          
        ),

        )),
    );
  }
}
