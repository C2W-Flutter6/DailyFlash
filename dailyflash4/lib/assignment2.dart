//container with rounded red colored borders and Text if center of container
import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 2"),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: ElevatedButton(
            onPressed: () {
              // Button pressed action
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), // Circular shape
              backgroundColor:
                  Color.fromARGB(255, 252, 164, 158), // Button background color
              side: const BorderSide(
                color: Color.fromARGB(255, 244, 67, 54), // Red border color
                width: 3, // Border width
              ),
            ),
            child: const Text(
              'Submit',
              style: TextStyle(
                color: Colors.black, // Text color
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
