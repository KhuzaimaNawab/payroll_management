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
  final TextEditingController _name = TextEditingController();
  final TextEditingController _designation = TextEditingController();
  final TextEditingController _department = TextEditingController();

  final TextEditingController _basicPay = TextEditingController();
  final TextEditingController _incentivePay = TextEditingController();
  final TextEditingController _houseRentAllowance = TextEditingController();
  final TextEditingController _mealAllowance = TextEditingController();
  final TextEditingController _providentFund = TextEditingController();
  final TextEditingController _loan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<EmployeeProvider>(context);
    return AlertDialog(
      title: const Text('Employee Information'),
      content: Column(children: [
        AlertBoxTextField(
          label: 'Employee Name',
          textEditingController: _name,
          isDigit: false,
        ),
        AlertBoxTextField(
          label: 'Add Designation',
          textEditingController: _designation,
          isDigit: false,
        ),
        AlertBoxTextField(
          label: 'Add Department',
          textEditingController: _department,
          isDigit: false,
        ),
        AlertBoxTextField(
          label: 'Add Basic Pay',
          textEditingController: _basicPay,
          isDigit: true,
        ),
        AlertBoxTextField(
          label: 'Add Incentive Pay',
          textEditingController: _incentivePay,
          isDigit: true,
        ),
        AlertBoxTextField(
          label: 'Add House Rent Allowance',
          textEditingController: _houseRentAllowance,
          isDigit: true,
        ),
        AlertBoxTextField(
          label: 'Add Meal Allowance',
          textEditingController: _mealAllowance,
          isDigit: true,
        ),
        AlertBoxTextField(
          label: 'Add Provident Fund',
          textEditingController: _providentFund,
          isDigit: true,
        ),
        AlertBoxTextField(
          label: 'Add loan',
          textEditingController: _loan,
          isDigit: true,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            provider.setName(_name);
            provider.setBasicPay(_basicPay);
            provider.setDepartment(_department);
            provider.setDesignation(_designation);
            provider.setHouseRentAllowance(_houseRentAllowance);
            provider.setIncentivePay(_incentivePay);
            provider.setLoan(_loan);
            provider.setMealAllowance(_mealAllowance);
            provider.setName(_name);
            provider.setProvidentFund(_providentFund);
            provider.addEmployeeInfo(
              Employee(
                id: 1,
                name: _name.text,
                designation: _designation.text,
                department: _department.text,
                basicPay: double.parse(_basicPay.text),
                incentivePay: double.parse(_incentivePay.text),
                houseRentAllowance: double.parse(_houseRentAllowance.text),
                mealAllowance: double.parse(_mealAllowance.text),
                providentFund: double.parse(_providentFund.text),
                loan: double.parse(_loan.text), 
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
