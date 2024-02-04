// An abstract data type (ADT) is a high-level description of a data structure that defines the behavior and operations that can be performed on the data, without specifying the internal implementation details. It provides a logical blueprint for organizing and manipulating data.

// ADTs are defined by their operations rather than their implementation. They encapsulate data and the operations that can be performed on that data, hiding the internal details and providing a clean interface for interacting with the data.

// Common examples of abstract data types include lists, stacks, queues, trees, graphs, and sets. Each ADT has a set of operations associated with it, such as inserting, deleting, searching, or iterating over elements.

// ADTs are often implemented as classes in object-oriented programming languages. The class defines the data members and methods that correspond to the operations of the ADT. The implementation details are hidden inside the class, providing encapsulation and abstraction.

// The advantage of using abstract data types is that they allow for modular and reusable code.

// Overall, abstract data types provide a way to define and work with data structures in a high-level and modular manner, promoting code organization, reusability, and separation of concerns.

// OOP is a programming paradigm used to create complex data types. We can create ADT using Classes i.e OOPs

// Without using Constructors:
class Employee {
  String? emp_name;
  String? designation;
}

// Classes using Constructors:
class EmployeeNew {
  // Setter methods
  // Unless defined here first, we cannot use in the Constructor method.
  String? name;
  int? age;
  int? salary;

  // Defining Constructor
  // The class name EmployeeNew is used as the constructor method. In Dart, the constructor method has the same name as the class.
  EmployeeNew(String name, age, salary) {
    print("This is called every time when an object is created");
    this.name = name;
    this.age = age;
    this.salary = salary;
  }

  String hasGoodSalary() {
    // ! is a null-aware operator.It is used to ensure that the salary variable is non-null before comparing it with the value 50000.
    // this.salary can also be used but it is NOT required.
    if (salary! > 50000) {
      return "${salary} is a good salary";
    } else {
      return "${salary} is NOT  a good salary";
    }
  }
}

void main() {
  Employee emp_1 = Employee();
  emp_1.emp_name = "Harshan";
  emp_1.designation = "developer";

  Employee emp_2 = Employee();
  emp_2.emp_name = "Garry Doe";
  emp_2.designation = "Software engineer";

  //  EmployeeNew keyword before the "empNew" object is used to declare a variable empNew of type EmployeeNew and allows you to create an instance (object) of the EmployeeNew class. EmployeeNew on the RHS is the constructor call.
  // If 3 instance variables are declared, then we need to pass 3 of them.
  // You can create the objects outside the main function also but the print statements and method callings should be inside the main function.

  EmployeeNew empNew = EmployeeNew("Michael", 27, 60000);
  print(emp_2.emp_name);
  print(empNew.name);
  print(empNew.hasGoodSalary());
}
