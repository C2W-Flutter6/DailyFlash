import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State createState() => _Assignment1State();
}

class _Assignment1State extends State {
  Color _borderColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment 1",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 107, 171, 224),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),

      //if condition true, exp1 is returned, otherwise exp2.
      body: Center(
        child: Container(
          width: 250,
          child: TextField(
            onTap: () {
              setState(() {
                _borderColor =
                    _borderColor == Colors.red ? Colors.green : Colors.red;
              });
            },
            decoration: InputDecoration(
              hintText: "Tap for borderColor Change",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: _borderColor),
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: _borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: _borderColor),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
