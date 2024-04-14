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
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 15, 198, 211),
        title: const Text(
          "Assignment 5",
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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            int itemNumber =
                index + 1; // Adding 1 to index to start numbering from 1
            return Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(7),
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1.5),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Title $itemNumber',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'This is Description for $itemNumber',
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 70,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 187, 33, 214),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.add,
                                size: 50,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
