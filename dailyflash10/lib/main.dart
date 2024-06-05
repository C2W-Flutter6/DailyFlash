import 'package:flutter/material.dart';
import 'assignment2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment2(),
      title: "DailyFlash",
      debugShowCheckedModeBanner: false,
    );
  }
}
