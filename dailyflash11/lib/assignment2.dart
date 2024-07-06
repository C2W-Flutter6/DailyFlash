import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State createState() => _Assignment2State();
}

class _Assignment2State extends State {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment 1",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 250,
          padding: const EdgeInsets.all(10),
          child: TextField(
            onTap: () {
              setState(() {
                //on tapping, the false mentioned above becomes true here.
                _isTapped = true;
              });
            },

            //suffixIcon:condition ? expression1 : expression2
            //if condition is true, then expression 1 is returned, otherwise expression 2.
            //if tapped (_isTapped=true), then it will return "lock + search icons" ,
            //otherwise only "lock icon" which is if _isTapped is false(original gloabally defined.)
            decoration: InputDecoration(
              suffixIcon: _isTapped
                  ? const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.lock),
                      ],
                    )
                  : const Icon(Icons.lock),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
