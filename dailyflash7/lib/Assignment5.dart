import 'package:flutter/material.dart';

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
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(18),
            bottomRight: Radius.circular(18),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Row 1 with flex ratio -> 6:3:1
            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 100,
                    color: const Color.fromARGB(255, 27, 184, 137),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 100,
                    color: const Color.fromARGB(255, 224, 68, 89),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: const Color.fromARGB(255, 182, 104, 235),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            //Row 2 with flex ratio -> 5:4:1
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 100,
                    color: const Color.fromARGB(255, 27, 184, 137),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 100,
                    color: const Color.fromARGB(255, 224, 68, 89),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: const Color.fromARGB(255, 182, 104, 235),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            //Row 3 with flex ratio -> 7:2:1
            Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    height: 100,
                    color: const Color.fromARGB(255, 27, 184, 137),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: const Color.fromARGB(255, 224, 68, 89),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: const Color.fromARGB(255, 182, 104, 235),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
