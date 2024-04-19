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
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                  color: Colors.black,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 50,
                            top: 10,
                          ),
                          child: Image.network(
                              height: 80,
                              width: 80,
                              "https://trademaklogos.s3.ap-south-1.amazonaws.com/5793236.jpeg"),
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(
                            // top: 10,
                            right: 20,
                          ),
                          width: 200,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              width: 1.5,
                              color: Colors.black,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Core2Web",
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
