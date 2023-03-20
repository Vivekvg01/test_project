// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({
    Key? key,
    required this.textController,
    required this.hintText,
    required this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);

  final TextEditingController textController;
  final String hintText;
  final Widget prefixIcon;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: textController,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
