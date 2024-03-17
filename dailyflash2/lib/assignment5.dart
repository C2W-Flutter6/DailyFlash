//On clicking the container, the color and text should change
import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});
  @override
  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  String displayText = 'Click me ! ';
  Color containerColor = Colors.red;

  void changeColor() {
    setState(() {
      displayText = 'Container Tapped';
      containerColor = Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 5"),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            changeColor();
          },
          child: Container(
            width: 200,
            height: 200,
            color: containerColor, // Set the initial color here
            child: Center(
              child: Text(
                displayText,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
