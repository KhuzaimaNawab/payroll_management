class Employee {
  final int id;
  String name;
  double salary;
  bool isSelected;

  Employee(
      {required this.id,
      required this.name,
      required this.salary,
      this.isSelected = false});
}
