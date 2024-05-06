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
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 15, 198, 211),
        title: const Text(
          "Assignment 3",
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
              padding: const EdgeInsets.all(10),
              height: 250,
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
                          margin: const EdgeInsets.only(left: 40),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: Image.network(
                              "https://trademaklogos.s3.ap-south-1.amazonaws.com/5793236.jpeg"),
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 12,
                                ),
                                width: 270,
                                height: 55,
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
                                child: const Text("Core2web"),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 12,
                                ),
                                width: 240,
                                height: 55,
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
                                child: const Text("Core2web"),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 12,
                                ),
                                width: 240,
                                height: 55,
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
                                child: const Text("Core2web"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        child: Container(
                          //padding: EdgeInsets.all(5),
                          margin: const EdgeInsets.only(
                            right: 60,
                          ),
                          width: 90,
                          height: 130,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                              width: 1.5,
                            ),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.black,
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
