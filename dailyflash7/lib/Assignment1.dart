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
        centerTitle: true,
        title: const Text(
          "Assignment 1",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 14, 72, 119),
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 30, 118, 190),
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
              height: 70,
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 133, 191, 238),
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
