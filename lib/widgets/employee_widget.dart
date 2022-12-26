import 'package:flutter/material.dart';

class EmployeeWidget extends StatelessWidget {
  final int id;
  final String name;
  final String designation;
  final String department;
  final double basicPay;
  final double incentivePay;
  final double houseRentAllowance;
  final double mealAllowance;
  final double providentFund;
  final double loan;
  const EmployeeWidget({
    super.key,
    required this.id,
    required this.name,
    required this.designation,
    required this.department,
    required this.basicPay,
    required this.incentivePay,
    required this.houseRentAllowance,
    required this.mealAllowance,
    required this.providentFund,
    required this.loan,
  });

  @override
  Widget build(BuildContext context) {
    const sizedBox50 = SizedBox(
      width: 50,
    );
    return Padding(
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
                children: [
                  Expanded(
                    child: Text(
                      id.toString(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          addColumn(name),
          sizedBox50,
          addColumn(designation),
          sizedBox50,
          addColumn(department),
          sizedBox50,
          addColumn(basicPay.toString()),
          sizedBox50,
          addColumn(incentivePay.toString()),
          sizedBox50,
          addColumn(houseRentAllowance.toString()),
          sizedBox50,
          addColumn(mealAllowance.toString()),
          sizedBox50,
          addColumn(providentFund.toString()),
          sizedBox50,
          addColumn(loan.toString()),
          sizedBox50,
        ],
      ),
    );
  }

  Expanded addColumn(String text) => Expanded(
          child: SizedBox(
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                text,
              ),
            ),
          ],
        ),
      ));
}
