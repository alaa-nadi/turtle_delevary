import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({
    super.key,
    required this.labelText,
    required this.icon,
  });

  final String labelText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration:
      InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
      keyboardType: TextInputType.phone,
    );
  }
}
