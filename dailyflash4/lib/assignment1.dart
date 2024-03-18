//container with rounded red colored borders and Text if center of container
import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 1"),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Button pressed action
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Rounded edges
              ),
              elevation: 20, // Shadow elevation
              shadowColor: Color.fromARGB(255, 14, 94, 160),
              backgroundColor:
                  Color.fromARGB(255, 132, 215, 253) // Shadow color
              ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Button ! ',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
