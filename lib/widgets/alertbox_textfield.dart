import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AlertBoxTextField extends StatelessWidget {
  final String label;
  final TextEditingController textEditingController;
  final bool isDigit;
  const AlertBoxTextField(
      {super.key,
      required this.label,
      required this.textEditingController,
      required this.isDigit});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label),
      ),
      controller: textEditingController,
      inputFormatters: [
        isDigit
            ? FilteringTextInputFormatter.digitsOnly
            : FilteringTextInputFormatter.singleLineFormatter
      ],
    );
  }
}
