import 'package:flutter/material.dart';

class AppBtn extends StatelessWidget {
  final String btnName;
  final VoidCallback onpress;
  const AppBtn({super.key, required this.btnName, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpress,
      child: Text(btnName),
      
    );
  }
}
