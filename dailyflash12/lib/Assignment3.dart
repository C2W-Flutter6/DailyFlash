import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  final _formKey = GlobalKey<FormState>();
  String? _collegeName;
  String? _name;
  String? _validateCollegeName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter college name';
    }
    return null;
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter your name';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: const Color.fromARGB(255, 206, 233, 251),
          content: Text(
            "Data being processed",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 122, 184, 234),
        title: const Text(
          "Name and College",
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
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Textformfield 1

            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 10,
                    bottom: 15,
                  ),
                  child: TextFormField(
                    cursorHeight: 20,
                    cursorColor: const Color.fromARGB(255, 49, 156, 198),
                    decoration: InputDecoration(
                      labelText: 'Enter your name',
                      labelStyle: const TextStyle(
                        fontSize: 20,
                        //color: const Color.fromARGB(255, 241, 109, 239),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 241, 95, 95)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: _validateName,
                    onSaved: (value) {
                      _name = value;
                    },
                  ),
                ),
              ],
            ),
            //Field2
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 10,
                    bottom: 25,
                  ),
                  child: TextFormField(
                    cursorHeight: 20,
                    cursorColor: const Color.fromARGB(255, 49, 156, 198),
                    decoration: InputDecoration(
                      labelText: 'Enter your college name',
                      labelStyle: const TextStyle(
                        fontSize: 20,
                        //color: const Color.fromARGB(255, 241, 109, 239),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 241, 95, 95)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: _validateCollegeName,
                    onSaved: (value) {
                      _collegeName = value;
                    },
                  ),
                ),
              ],
            ),
            //Submit button
            ElevatedButton(
              onPressed: _submitForm,
              child: const Text(
                "Submit",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
