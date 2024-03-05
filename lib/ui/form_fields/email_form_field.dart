import 'package:flutter/material.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: TextFormField(
        cursorColor: Colors.black,
        decoration: const InputDecoration(
            labelText: "Email", suffixIcon: Icon(Icons.clear)),
      ),
    );
  }
}
