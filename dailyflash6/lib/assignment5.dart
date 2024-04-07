import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  Color _color1 = const Color.fromARGB(255, 235, 213, 213);
  Color _color2 = const Color.fromARGB(255, 235, 213, 213);
  Color _color3 = const Color.fromARGB(255, 235, 213, 213);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment 5",
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_color1 == Colors.red) {
                    _color1 = Colors.white;
                  } else {
                    _color1 = Colors.red;
                  }
                });
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: _color1,
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                margin: EdgeInsets.all(10),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_color2 == Colors.red) {
                    _color2 = Colors.white;
                  } else {
                    _color2 = Colors.red;
                  }
                });
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: _color2,
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                margin: const EdgeInsets.all(10),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_color3 == Colors.red) {
                    _color3 = Colors.white;
                  } else {
                    _color3 = Colors.red;
                  }
                });
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: _color3,
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                margin: const EdgeInsets.all(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
