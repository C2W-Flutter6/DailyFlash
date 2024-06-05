import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State createState() => _Assignment5State();
}

class _Assignment5State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment 5",
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
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(9, 5),
              ),
            ],
            //borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple, Colors.green],
              begin: Alignment.centerLeft,
            ),
          ),
        ),
      ),
    );
  }
}
