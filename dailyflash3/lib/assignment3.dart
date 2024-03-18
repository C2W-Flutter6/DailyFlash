import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});
  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  Color borderColor = Colors.red;

  void changeBorderColor() {
    setState(() {
      borderColor = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeBorderColor();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Assignment 3"),
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
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 243, 163, 190),
              border: Border.all(
                color: borderColor,
                width: 10,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
