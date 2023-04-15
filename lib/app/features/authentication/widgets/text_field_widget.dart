import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      style: const TextStyle(fontSize: 15, height: 0),
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hint,
          contentPadding: const EdgeInsets.all(10)),
    );
  }
}
