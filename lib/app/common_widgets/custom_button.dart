import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.action,
   
  });

  final String title;
  final VoidCallback action;
 
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      child: Text(title),
    );
  }
}
