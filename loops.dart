import 'dart:io';

void main() {
  // Conditionals
  // The syntax for the if blocks are same in JS too
  String name = "harshan";
  if (name.contains("h")) {
    print("This word has h");
  } else if (name.contains("a")) {
    print("This word contains a");
  } else {
    print("This word does not contain a or h");
  }
  // Also we have switch, case and default as always.

  // Building A Guessing Game
  String secret = "secret";
  String guessWord = "";
  int attempts = 0;
  int max_attempts = 3;

  while (guessWord != secret && attempts < max_attempts) {
    print("Enter your guess word");
    String? userGuess = stdin.readLineSync()!;
    guessWord = userGuess;
    attempts += 1;
  }
  if (guessWord == secret) {
    print("You have WON the game in ${attempts} attempts");
  } else {
    print("You have exhausted your attempts.YOU LOST");
  }

  // For loops
  // We have basic/traditional for loop, for-in loop and for-each loop
  // for (int i; i<5 ;i++){print i;}

  List<String> names = ["Stephen", "Danny", "Anu"];
  for (String name in names) {
    print(name.toUpperCase());
  }
  names.forEach((name) {
    print(name.toUpperCase());
  });

  // Map Data Structure
  // The below code signifies key is String but value can be of any data type
  Map<String, dynamic> employee = {
    "name": "Alankrith",
    "designation": "developer",
    "age": 26
  };
  employee["designation"] = "full stack developer";
  employee["current_city"] = "Hyderabad";
  print(employee);

  // Short hand notation of implementing the Maps
  var person = {"name": "kerub", "country": "India"};
  print(person["name"]);

  var personAgain = <String, String>{"name": "kerub", "country": "India"};
  print(personAgain["country"]);

  // Add-ons
  List sample = [
    ["h", "a", true],
    false
  ];
  print(sample[0]);

  // Type inference is where the compiler works out the type on your behalf. Type annotation is where you specify the type explicitly. Below is the example of Type annotation.
  List z = ["hello", "world"];
  print(z[0]);

  // Object is the base class for all Dart objects except null
  List<Object> random = [1, 2, 3, "4"];
  print(random);

  List<dynamic> items = [1, "two", true];

  for (var item in items) {
    // Trying to access a property of the dynamic item
    if (item is String) {
      print(item.length);
    } else {
      print('Item does not have a length property');
    }
  }

  dynamic a;
  Object b;
  a = "harshan";
  b = "kerub";
  print(a.length);
  // print(b.length); length is not defined for Object
}
