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
  TextEditingController _salary = TextEditingController();

  void setName(TextEditingController name) {
    _name = name;
    notifyListeners();
  }

  void setSalary(TextEditingController salary) {
    _salary = salary;
    notifyListeners();
  }

  TextEditingController get name => _name;
  TextEditingController get salary => _salary;

  void addEmployeeInfo(Employee employee) {
    _employeeList.add(employee);
    notifyListeners();
  }

  void removeEmployeeInfo(int id) {
    _employeeList.removeAt(id);
    notifyListeners();
  }

  void editEmployeeInfo(Employee employee, String name, double salary) {
    employee.name = name;
    employee.salary = salary;
    notifyListeners();
  }
}
