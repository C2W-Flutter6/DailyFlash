//Floating Action Button with name and icon

import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
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
      body: const Center(
        child: Text(
          'Welcome to My App!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 300, // Set the width of the FloatingActionButton
        child: FloatingActionButton(
          onPressed: () {
            // Add action here
          },
          child: const Row(
            //mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.person), // Icon
              SizedBox(width: 2), // Spacer
              Text('Your Name'), // Text
            ],
          ),
        ),
      ),
    );
  }
}
