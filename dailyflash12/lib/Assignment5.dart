import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 122, 184, 234),
        title: const Text(
          "DatePicker",
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
        child: Container(
          margin: EdgeInsets.all(20),
          child: TextFormField(
            onTap: () {},
            cursorHeight: 20,
            cursorColor: const Color.fromARGB(255, 49, 156, 198),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2024),
                    lastDate: DateTime(2024),
                  );
                  String formatedDate = DateFormat.yMMMd().format(pickedDate!);
                  setState(() {
                    dateController.text = formatedDate;
                  });
                },
                icon: Icon(Icons.calendar_month),
              ),
              labelText: 'Enter Date',
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
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 241, 95, 95)),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
