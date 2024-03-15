//appBar with different background Color plus icons on the right(3) and left side(1)
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
        leading: const Icon(Icons.menu),
        title: const Text("Assignment 2"),
        backgroundColor: Colors.amberAccent,
        actions: const [
          Icon(Icons.call),
          Icon(Icons.filter_1),
          Icon(Icons.file_copy),
        ],
      ),
    );
  }
}
