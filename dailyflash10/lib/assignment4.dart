import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State createState() => _Assignment4State();
}

class _Assignment4State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment 4",
          style: TextStyle(
            letterSpacing: 0.5,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.red,
                offset: Offset(10, 5),
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [Colors.blue, Colors.purple],
              stops: [0.2, 0.4],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
    );
  }
}
