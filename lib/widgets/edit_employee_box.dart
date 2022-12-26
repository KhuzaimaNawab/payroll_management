import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          label: 'Add Designation',
          textEditingController: provider.designation,
          isDigit: false,
        ),
        AlertBoxTextField(
          label: 'Add Department',
          textEditingController: provider.department,
          isDigit: false,
        ),
        AlertBoxTextField(
          label: 'Add Basic Pay',
          textEditingController: provider.basicPay,
          isDigit: true,
        ),
        AlertBoxTextField(
          label: 'Add Incentive Pay',
          textEditingController: provider.incentivePay,
          isDigit: true,
        ),
        AlertBoxTextField(
          label: 'Add House Rent Allowance',
          textEditingController: provider.houseRentAllowance,
          isDigit: true,
        ),
        AlertBoxTextField(
          label: 'Add Meal Allowance',
          textEditingController: provider.mealAllowance,
          isDigit: true,
        ),
        AlertBoxTextField(
          label: 'Add Provident Fund',
          textEditingController: provider.providentFund,
          isDigit: true,
        ),
        AlertBoxTextField(
          label: 'Add loan',
          textEditingController: provider.loan,
          isDigit: true,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            provider.editEmployeeInfo(
              provider.employeeList[provider.index],
              provider.name.text,
              provider.designation.text,
              provider.department.text,
              double.parse(provider.basicPay.text),
              double.parse(provider.incentivePay.text),
              double.parse(provider.houseRentAllowance.text),
              double.parse(provider.mealAllowance.text),
              double.parse(provider.providentFund.text),
              double.parse(provider.loan.text),
            );

            Navigator.pop(context);
          },
          child: const Text('Save'),
        )
      ]),
    );
  }
}
