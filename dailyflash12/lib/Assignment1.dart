import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  bool isPasswordVisible = false;
  Icon passwordIcon = Icon(
    Icons.visibility_off,
    color: Colors.black54,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 122, 184, 234),
        title: const Text(
          "Password",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      body: Center(
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                  if (isPasswordVisible) {
                    passwordIcon = Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    );
                  } else {
                    Icon(Icons.visibility_off, color: Colors.grey);
                  }
                });
              },
              icon: passwordIcon,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black26),
            ),
          ),
        ),
      ),
    );
  }
}
