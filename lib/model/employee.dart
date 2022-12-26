class Employee {
  final int id;
  String name;
  String designation;
  String department;
  double basicPay;
  double incentivePay;
  double houseRentAllowance;
  double mealAllowance;
  double providentFund;
  double loan;

  bool isSelected;

  Employee(
      {required this.id,
      required this.name,
      required this.designation,
      required this.department,
      required this.basicPay,
      required this.incentivePay,
      required this.houseRentAllowance,
      required this.mealAllowance,
      required this.providentFund,
      required this.loan,
      this.isSelected = false});
}
