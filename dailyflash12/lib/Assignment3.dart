import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 122, 184, 234),
        title: const Text(
          "Weekday List",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Textformfield 1
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          //Field2
          //Submit button
        ],
      ),
    );
  }
}
