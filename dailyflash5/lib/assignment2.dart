import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 2"),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 115, 146, 233)),
              child: Image.network(
                'https://d2hucwwplm5rxi.cloudfront.net/wp-content/uploads/2022/09/23074716/sports-vs-supercars-cover-230920221250.jpg', // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 115, 146, 233),
              ),
              child: Image.network(
                'https://i.pinimg.com/originals/ca/7c/ca/ca7cca8cbea153adee0509b5ae6f37de.jpg', // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 115, 146, 233),
              ),
              child: Image.network(
                'https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/models_gw/2023/03_29_revuelto/gate_models_s_02_m.jpg', // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
