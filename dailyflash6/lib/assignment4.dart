import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment 4",
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
      body: Center(
        child: Container(
          height: 250,
          width: 650,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: Colors.black,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              // Use a Row to hold multiple children
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.black,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(width: 40), // Add spacing between containers
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 30),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Colors.black,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      color: Colors.purple,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
