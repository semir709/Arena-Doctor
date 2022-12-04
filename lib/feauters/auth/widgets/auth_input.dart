import 'package:flutter/material.dart';

class AuthInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String hintText;

  const AuthInput(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
          hintText: hintText),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter your $label';
        }
        return null;
      },
    );
  }
}
