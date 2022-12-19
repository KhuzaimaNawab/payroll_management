import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/employee.dart';
import '../provider/employee_provider.dart';
import 'alertbox_textfield.dart';

class EditEmployeeBox extends StatelessWidget {
  const EditEmployeeBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<EmployeeProvider>(context);

    return AlertDialog(
      title: const Text('Update Information'),
      content: Column(children: [
        AlertBoxTextField(
          label: 'Employee Name',
          textEditingController: provider.name,
          isDigit: false,
        ),
        AlertBoxTextField(
          label: 'Add Salary',
          textEditingController: provider.salary,
          isDigit: true,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            provider.editEmployeeInfo(provider.employeeList[provider.index],
                provider.name.text, double.parse(provider.salary.text));
            Navigator.pop(context);
          },
          child: const Text('Save'),
        )
      ]),
    );
  }
}
