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
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<EmployeeProvider>(context);
    const sizedBox50 = SizedBox(
      width: 50,
    );
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            color: const Color(0xFFF7F8FA),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Expanded(
                          child: Text(
                            'ID',
                            style: TextStyle(
                                color: Color(0xFF091F46),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                rowOfData('Name'),
                sizedBox50,
                rowOfData('Designation'),
                sizedBox50,
                rowOfData('Department'),
                sizedBox50,
                rowOfData('Basic Pay'),
                sizedBox50,
                rowOfData('Incentive Pay'),
                sizedBox50,
                rowOfData('House Rent'),
                sizedBox50,
                rowOfData('Meal Allowance'),
                sizedBox50,
                rowOfData('Provident Fund'),
                sizedBox50,
                rowOfData('Loan'),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: provider.employeeList.length,
            itemBuilder: (BuildContext context, int index) {
              final employeeAttribute = provider.employeeList[index];
              return InkWell(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                  provider.setIndex(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color:
                          selected == index ? Colors.blue[100] : Colors.white),
                  child: EmployeeWidget(
                    id: employeeAttribute.id,
                    name: employeeAttribute.name,
                    designation: employeeAttribute.designation,
                    department: employeeAttribute.department,
                    basicPay: employeeAttribute.basicPay,
                    incentivePay: employeeAttribute.incentivePay,
                    houseRentAllowance: employeeAttribute.houseRentAllowance,
                    mealAllowance: employeeAttribute.mealAllowance,
                    providentFund: employeeAttribute.providentFund,
                    loan: employeeAttribute.loan,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Expanded rowOfData(String text) => Expanded(
          child: SizedBox(
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                    color: Color(0xFF091F46), fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ));
}
