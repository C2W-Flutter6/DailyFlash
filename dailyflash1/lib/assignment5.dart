//container in the center with rounded corners and shadow of red color

import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        title: const Text(
          "Assignment 5",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(10, 10),
                blurRadius: 20,
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
