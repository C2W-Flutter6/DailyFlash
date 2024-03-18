//container with rounded red colored borders and Text if center of container
import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 1"),
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
          color: Colors.purpleAccent,
          child: Container(
            height: 250,
            width: 250,
            //color: Colors.amber,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(15),
            child: Image.network(
                height: 230,
                width: 230,
                fit: BoxFit.cover,
                "https://img.freepik.com/free-vector/colorful-feather-element-vector-set_53876-126297.jpg"),
          ),
        ),
      ),
    );
  }
}
