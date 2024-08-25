import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  final _formKey = GlobalKey<FormState>();
  String? _collegeName;
  String? _name;
  final List<Map<String, String>> _userInputs = [];
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _collegeController = TextEditingController();

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
      _formKey.currentState?.save();
      setState(() {
        _userInputs.add({
          'name': _name!,
          'collegeName': _collegeName!,
        });
      });
      clearFields();
    }
  }

  void clearList() {
    setState(() {
      _userInputs.clear();
    });
  }

  void clearFields() {
    _nameController.clear();
    _collegeController.clear();
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
          children: [
            // Name Field
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              child: TextFormField(
                controller: _nameController,
                cursorHeight: 20,
                cursorColor: const Color.fromARGB(255, 49, 156, 198),
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  labelStyle: const TextStyle(fontSize: 20),
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
            // College Name Field
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              child: TextFormField(
                controller: _collegeController,
                cursorHeight: 20,
                cursorColor: const Color.fromARGB(255, 49, 156, 198),
                decoration: InputDecoration(
                  labelText: 'Enter your college name',
                  labelStyle: const TextStyle(fontSize: 20),
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
            // Submit button and Clear Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(width: 40),
                ElevatedButton(
                  onPressed: clearList,
                  child: const Text(
                    "Clear List",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Display user inputs in a ListView
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                itemCount: _userInputs.length,
                itemBuilder: (context, index) {
                  final input = _userInputs[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      //color: Colors.blueAccent.withOpacity(0.1),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          'Name: ${input['name']}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'College Name: ${input['collegeName']}',
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
