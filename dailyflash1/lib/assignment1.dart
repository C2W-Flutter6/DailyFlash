import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() {
    return _Assignment1State();
  }
}

class _Assignment1State extends State<Assignment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
        centerTitle: true,
        title: const Text(
          "Assignment 1",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [
          Icon(
            Icons.add_call,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
