import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State createState() => _Assignment2State();
}

class _Assignment2State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 15, 198, 211),
        title: const Text(
          "Assignment 2",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 4, 76, 136),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: double.infinity,
              height: 125,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                  color: Colors.black,
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(7),
                        margin: const EdgeInsets.only(
                          left: 100,
                          top: 15,
                        ),
                        width: 100,
                        height: 100,
                        child: Image.network(
                            fit: BoxFit.cover,
                            "https://trademaklogos.s3.ap-south-1.amazonaws.com/5793236.jpeg"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(7),
                        margin: const EdgeInsets.only(
                          right: 50,
                          left: 80,
                          top: 15,
                        ),
                        width: 180,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          border: Border.all(
                            width: 1.5,
                            color: Colors.black,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Core2web",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
