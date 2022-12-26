import 'package:flutter/material.dart';

class AppBtn extends StatelessWidget {
  final String btnName;
  final VoidCallback onpress;
  const AppBtn({super.key, required this.btnName, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpress,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF091F46),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          btnName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
