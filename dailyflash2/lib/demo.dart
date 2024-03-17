//container with rounded red colored borders and Text if center of container
import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(
        top: 100,
        left: 30,
        right: 30,
        bottom: 25,
      ),
      child: Container(
        height: 300,
        color: Colors.red,
        alignment: Alignment.bottomLeft,
        child: Column(children: [
          const Text("Put your Text Here!!!!"),
          Container(
            width: 360,
            height: 230,
            color: Colors.blue,
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'Car or sport car',
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
