import 'package:flutter/material.dart';
import 'package:payroll_management/provider/employee_provider.dart';
import 'package:payroll_management/widgets/app_btn.dart';
import 'package:payroll_management/widgets/edit_employee_box.dart';
import 'package:provider/provider.dart';

import '../widgets/add_employee_box.dart';
import '../widgets/employee_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<EmployeeProvider>(context);
    const sizedBoxW = SizedBox(
      width: 40,
    );

    const sizedBoxH = SizedBox(
      height: 20,
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Payroll Management',
              style: TextStyle(fontSize: 30),
            ),
            sizedBoxH,
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: const EmployeeList(),
            ),
            sizedBoxH,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBtn(
                  btnName: 'Add An Employee',
                  onpress: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => const AddEmployeeBox(),
                    );
                  },
                ),
                sizedBoxW,
                AppBtn(
                  btnName: 'Remove An Employee',
                  onpress: () {
                    final index = provider.index;
                    provider.removeEmployeeInfo(index);
                  },
                ),
                sizedBoxW,
                AppBtn(
                  btnName: 'Edit Employee Info',
                  onpress: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          const EditEmployeeBox(),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
