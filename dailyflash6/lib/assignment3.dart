import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment 3",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(70),
        child: Row(
          children: [
            // Column 1
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    color: Colors.red,
                    height: 100,
                    width: 150,
                  ),
                  const Spacer(), // Add space between the containers
                  Container(
                    color: Colors.orange,
                    height: 100,
                    width: 150,
                  ),
                ],
              ),
            ),
            const Spacer(), // Add Spacer to maintain equal spacing
            // Column 2
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    color: Colors.purple,
                    height: 100,
                    width: 150,
                    padding: const EdgeInsets.all(50),
                  ),
                  const Spacer(), // Add space between the containers
                  Container(
                    color: Colors.green,
                    height: 100,
                    width: 150,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
