class Employee {
  int id;
  String name;
  String department;

  // Constructor dengan parameter
  Employee(this.id, this.name, this.department);

  // Method untuk menampilkan informasi employee
  void displayInfo() {
    print("Employee ID: $id");
    print("Name: $name");
    print("Department: $department");
  }
}
