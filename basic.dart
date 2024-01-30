import 'dart:math';
import 'dart:io';

void main() {
  String name="Harshan";
  int age=26;
  bool isMale=true;
  print("My name is ${name} and my age is ${age}");
  print(name.length);
  print(name.toUpperCase());
  print(name.contains("ke"));
  print(sqrt(130));
  print("Where are you from? ");
  String? place = stdin.readLineSync();
  print("${place} is a beautiful place");
  main1();

  // Adding two inputs 
  // Since double.parse() may throw an exception if the input cannot be parsed as a double, the ! operator is used to assert that the input is non-null.
  
  // Null Assertion (!): It tells the Dart compiler that you are confident that the value will not be null at runtime. If the value is actually null, a runtime NullThrownError will be thrown.
  
  String? school=null ;
  print("enter number one");
  double? num1=double.parse(stdin.readLineSync()!);
  print("enter number two");
  double? num2=double.parse(stdin.readLineSync()!);
  print((num1+num2).toStringAsFixed(2).runtimeType);
  print((num1+num2).toStringAsFixed(2));

  List <int> myNums=[3,4,5];  // strongly typed
  List <dynamic> myNumsOne=[3,4,5,"6"];  // dynamic typed
  myNumsOne.add(7);
  print(myNumsOne);
  
  print(myNums[2]);
  print(myNumsOne.length);
  // add and remove are used to append and remove an element from an array
}


main1() {
  print("hey there");
}
