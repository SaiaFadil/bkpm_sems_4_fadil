import 'employee.dart';

void main() {
  // Membuat objek Employee dengan constructor
  Employee employee1 = Employee(101, "John Doe", "IT");
  Employee employee2 = Employee(102, "Jane Smith", "Finance");

  // Menampilkan informasi employee
  print("Employee 1:");
  employee1.displayInfo();

  print("\nEmployee 2:");
  employee2.displayInfo();
}
