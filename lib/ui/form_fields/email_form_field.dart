import 'package:flutter/material.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.black,
        decoration: const InputDecoration(
            labelText: "Email", suffixIcon: Icon(Icons.clear)),
      ),
    );
  }
}
