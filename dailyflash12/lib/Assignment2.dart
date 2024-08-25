import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  List<String> listOfDays = [];
  final TextEditingController _textController = TextEditingController();

  void _addDay() {
    String inputText = _textController.text.trim();
    if (inputText.isNotEmpty) {
      setState(() {
        listOfDays.add(inputText);
      });
      _textController.clear(); // Clear the input field after adding
    }
  }

  void clearList() {
    setState(() {
      listOfDays.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 122, 184, 234),
        title: const Text(
          "Weekday List",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
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
            Container(
              width: 250,
              child: TextFormField(
                cursorColor: Colors.black,
                cursorWidth: 2,
                cursorHeight: 20,
                controller: _textController,
                decoration: InputDecoration(
                  labelText: 'Enter WeekDay',
                  labelStyle: const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
                onFieldSubmitted: (value) =>
                    _addDay(), // Add day when "Done" is pressed on the keyboard
              ),
            ),
            const SizedBox(height: 10),
            // Display the list of days with spacing between each day
            Container(
              width: 250,
              padding: const EdgeInsets.only(left: 28, right: 10),
              child: Wrap(
                spacing: 6.0, // Add horizontal spacing
                children: listOfDays.map((day) {
                  return Text(
                    day,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  );
                }).toList(),
              ),
            ),

            const SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {
                clearList();
              },
              child: Text("Clear List"),
            ),
          ],
        ),
      ),
    );
  }
}
