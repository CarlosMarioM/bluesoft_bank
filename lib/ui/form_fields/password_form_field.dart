import 'package:flutter/material.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: TextFormField(
        cursorColor: Colors.black,
        decoration: const InputDecoration(
            labelText: "Password", suffixIcon: Icon(Icons.remove_red_eye)),
      ),
    );
  }
}
