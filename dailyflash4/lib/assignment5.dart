import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  Color _buttonColor = Colors.blue; // Default button color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 5"),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Color change on long press',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: GestureDetector(
        onLongPress: () {
          setState(() {
            _buttonColor = Colors.purple; // Change color on long press
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Button Long Pressed')),
          );
        },
        child: FloatingActionButton(
          onPressed: () {
            // Add action here
          },
          backgroundColor: _buttonColor, // Use dynamic color
          child: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: null, // Remove bottom navigation bar
    );
  }
}
