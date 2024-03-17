//Container with border on only one side
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
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.lightBlueAccent,
            border: Border(
              left: BorderSide(width: 5, color: Colors.purple),
            ),
          ),
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(20),
          child: const Center(
            child: Text(
              "Border on one side!",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
