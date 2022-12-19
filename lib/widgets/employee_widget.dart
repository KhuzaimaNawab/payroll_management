import 'package:flutter/material.dart';

class EmployeeWidget extends StatelessWidget {
  final int id;
  final String employeeName;
  final double salary;
  const EmployeeWidget({super.key, required this.id, required this.employeeName, required this.salary});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(id.toString()),
        const SizedBox(
          width: 10,
        ),
        Text(employeeName),
        const SizedBox(
          width: 50,
        ),
        Text(salary.toString()),
      ],
    );
  }
}
