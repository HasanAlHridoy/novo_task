import 'package:flutter/material.dart';

class ProfileCustomFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const ProfileCustomFormField({
    required this.label,
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        contentPadding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(
            color: Colors.black87, // Border color
            width: 1.0, // Border width
          ),
        ),
      ),
    );
  }
}
