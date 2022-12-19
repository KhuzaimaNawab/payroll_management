import 'package:flutter/material.dart';
import 'package:payroll_management/provider/employee_provider.dart';
import 'package:payroll_management/widgets/employee_widget.dart';
import 'package:provider/provider.dart';

class EmployeeList extends StatefulWidget {
  const EmployeeList({super.key});

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<EmployeeProvider>(context);
    return ListView.builder(
      itemCount: provider.employeeList.length,
      itemBuilder: (BuildContext context, int index) {
        final employeeAttribute = provider.employeeList[index];
        return InkWell(
          onTap: () {
            setState(() {
              isSelected = true;
            });
            provider.setIndex(index);
          },
          child: Container(
            decoration: BoxDecoration(color: Colors.lightBlue[100]),
            child: EmployeeWidget(
                id: employeeAttribute.id,
                employeeName: employeeAttribute.name,
                salary: employeeAttribute.salary),
          ),
        );
      },
    );
  }
}
