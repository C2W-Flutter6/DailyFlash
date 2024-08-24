import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  String? _phoneError;
  String? _emailError;

  void validateData() {
    if (_formKey.currentState?.validate() == true &&
        _phoneError == null &&
        _emailError == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Color.fromARGB(255, 114, 208, 246),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          content: Text(
            textAlign: TextAlign.center,
            'Validation Successful',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 6, 63, 109),
            ),
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Color.fromARGB(255, 114, 208, 246),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          content: Text(
            textAlign: TextAlign.center,
            'Please correct the errors',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 6, 63, 109),
            ),
          ),
        ),
      );
    }
  }

  void _validatePhone(String value) {
    final RegExp phoneExp = RegExp(r'^\d{10}$');
    setState(() {
      if (value.isEmpty || !phoneExp.hasMatch(value)) {
        _phoneError = 'Enter a valid 10-digit phone number';
      } else {
        _phoneError = null;
      }
    });
  }

  void _validateEmail(String value) {
    final RegExp emailExp = RegExp(r'^[a-z0-9._%+-]+@gmail\.com$');
    setState(() {
      if (value.isEmpty ||
          !emailExp.hasMatch(value) ||
          value != value.toLowerCase()) {
        _emailError =
            'Enter a valid email address ending with @gmail.com in lowercase';
      } else {
        _emailError = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Form Validation",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Phone Number Field
              Container(
                width: 300,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 240, 244, 248),
                ),
                child: TextFormField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 53, 52, 52),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        width: 1.5,
                        color: Color.fromARGB(255, 30, 30, 30),
                      ),
                    ),
                    errorText: _phoneError,
                  ),
                  onChanged: _validatePhone,
                  validator: (value) {
                    if (_phoneError != null) return _phoneError;
                    return null;
                  },
                ),
              ),

              // Email Field
              Container(
                width: 300,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 240, 244, 248),
                ),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email Id',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 53, 52, 52),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        width: 1.5,
                        color: Color.fromARGB(255, 30, 30, 30),
                      ),
                    ),
                    errorText: _emailError,
                  ),
                  onChanged: _validateEmail,
                  validator: (value) {
                    if (_emailError != null) return _emailError;
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Submit Button
              Container(
                width: 100,
                height: 40,
                child: ElevatedButton(
                  onPressed: validateData,
                  child: const Text(
                    "Validate",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 13, 13, 14),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
