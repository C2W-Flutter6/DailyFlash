import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State createState() => _Assignment3State();
}

class _Assignment3State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment 3",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                border: Border.all(
                    width: 2, color: const Color.fromARGB(255, 252, 113, 71)),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.orange,
                    blurRadius: 5,
                    spreadRadius: 6,
                    offset: Offset(-2, -1),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 100),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 68, 191, 212),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(255, 17, 70, 114),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 64, 51, 240),
                    blurRadius: 5,
                    spreadRadius: 6,
                    offset: Offset(-2, -1),
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
