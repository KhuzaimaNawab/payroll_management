import 'package:flutter/material.dart';
import 'package:payroll_management/provider/employee_provider.dart';
import 'package:payroll_management/widgets/alertbox_textfield.dart';
import 'package:provider/provider.dart';

import '../model/employee.dart';

class AddEmployeeBox extends StatefulWidget {
  const AddEmployeeBox({super.key});

  @override
  State<AddEmployeeBox> createState() => _AddEmployeeBox();
}

class _AddEmployeeBox extends State<AddEmployeeBox> {
  final TextEditingController employeeName = TextEditingController();
  final TextEditingController salary = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<EmployeeProvider>(context);
    return AlertDialog(
      title: const Text('Employee Information'),
      content: Column(children: [
        AlertBoxTextField(
          label: 'Employee Name',
          textEditingController: employeeName,
          isDigit: false,
        ),
        AlertBoxTextField(
          label: 'Add Salary',
          textEditingController: salary,
          isDigit: true,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            print(employeeName.text);
            print(salary.text);
            provider.setName(employeeName);
            provider.setSalary(
              salary,
            );
            provider.addEmployeeInfo(
              Employee(
                id: 1,
                name: employeeName.text,
                salary: double.parse(salary.text),
              ),
            );
            Navigator.pop(context);
          },
          child: const Text('Save'),
        )
      ]),
    );
  }
}
