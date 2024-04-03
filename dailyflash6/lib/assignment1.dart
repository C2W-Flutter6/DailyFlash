import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State createState() => _Assignment1State();
}

class _Assignment1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 1"),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Image.network(
          "https://nomoneynotime.com.au/uploads/recipes/shutterstock_2042520416-1.jpg",
          height: 300,
          width: 1000,
        ),
      ),
    );
  }
}
