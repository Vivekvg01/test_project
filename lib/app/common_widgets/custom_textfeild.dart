// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({
    Key? key,
    required this.textController,
    required this.hintText,
    required this.prefixIcon,
    required this.validateMessage,
    this.obscureText = false,
  }) : super(key: key);

  final TextEditingController textController;
  final String hintText;
  final Widget prefixIcon;
  final String validateMessage;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: textController,
      validator: (val) {
        if (val == null || val.isEmpty) {
          return validateMessage;
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
