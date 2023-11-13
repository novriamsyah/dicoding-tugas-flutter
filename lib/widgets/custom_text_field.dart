import 'package:flutter/material.dart';

import '../misc/constans.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool obSecureText;
  const CustomTextField(
      {Key? key,
      required this.labelText,
      required this.controller,
      this.obSecureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obSecureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: ghostWhite),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade800),
        ),
      ),
    );
  }
}
