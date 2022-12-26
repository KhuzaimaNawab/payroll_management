import 'package:flutter/cupertino.dart';

import '../model/employee.dart';

class EmployeeProvider with ChangeNotifier {
  final List<Employee> _employeeList = [];

  List<Employee> get employeeList => _employeeList;

  int _index = 0;

  int get index => _index;

  void setIndex(int index) {
    _index = index;
    notifyListeners();
  }

  TextEditingController _name = TextEditingController();
  TextEditingController _designation = TextEditingController();
  TextEditingController _department = TextEditingController();

  TextEditingController _basicPay = TextEditingController();
  TextEditingController _incentivePay = TextEditingController();
  TextEditingController _houseRentAllowance = TextEditingController();
  TextEditingController _mealAllowance = TextEditingController();
  TextEditingController _providentFund = TextEditingController();
  TextEditingController _loan = TextEditingController();
  TextEditingController _totalPay = TextEditingController();

  void setName(TextEditingController name) {
    _name = name;
    notifyListeners();
  }

  void setDesignation(TextEditingController designation) {
    _designation = designation;
    notifyListeners();
  }

  void setDepartment(TextEditingController department) {
    _department = department;
    notifyListeners();
  }

  void setBasicPay(TextEditingController basicPay) {
    _basicPay = basicPay;
    notifyListeners();
  }

  void setIncentivePay(TextEditingController incentivePay) {
    _incentivePay = incentivePay;
    notifyListeners();
  }

  void setHouseRentAllowance(TextEditingController houseRentAllowance) {
    _houseRentAllowance = houseRentAllowance;
    notifyListeners();
  }

  void setMealAllowance(TextEditingController mealAllowance) {
    _mealAllowance = mealAllowance;
    notifyListeners();
  }

  void setProvidentFund(TextEditingController providentFund) {
    _providentFund = providentFund;
    notifyListeners();
  }

  void setLoan(TextEditingController loan) {
    _loan = loan;
    notifyListeners();
  }

  void setTotalPay(TextEditingController totalPay) {
    _totalPay = totalPay;
    notifyListeners();
  }  

  TextEditingController get name => _name;
  TextEditingController get designation => _designation;
  TextEditingController get department => _department;
  TextEditingController get basicPay => _basicPay;
  TextEditingController get incentivePay => _incentivePay;
  TextEditingController get houseRentAllowance => _houseRentAllowance;
  TextEditingController get mealAllowance => _mealAllowance;
  TextEditingController get providentFund => _providentFund;
  TextEditingController get loan => _loan;
  TextEditingController get totalPay => _totalPay;

  void addEmployeeInfo(Employee employee) {
    _employeeList.add(employee);
    notifyListeners();
  }

  void removeEmployeeInfo(int id) {
    _employeeList.removeAt(id);

    notifyListeners();
  }

  void editEmployeeInfo(
    Employee employee,
    String name,
    String designation,
    String department,
    double basicPay,
    double incentivePay,
    double houseRentAllowance,
    double mealAllowance,
    double providentFund,
    double loan,
  ) {
    employee.name = name;
    employee.designation = designation;
    employee.department = department;
    employee.basicPay = basicPay;
    employee.incentivePay = incentivePay;
    employee.houseRentAllowance = houseRentAllowance;
    employee.mealAllowance = mealAllowance;
    employee.providentFund = providentFund;
    employee.loan = loan;
    notifyListeners();
  }
}
