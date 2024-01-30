import "dart:io";

void promptUser() {
  stdout.write('Enter something: '); // rather than using print
  String userInput = stdin.readLineSync()!;
  print(userInput);
}

String personAge(String name, int age) {
  return "Hello $name, you are $age years old";
}

String favMovie(String question) {
  print(question);
  String movie = stdin.readLineSync()!;
  return movie;
}

// return type is void here
void main() {
  // functions
  print(personAge(
      "Harshan", 26)); // If you pass "26" it will throw a runtime error.
  String favMoviereturn = favMovie("What is your favorite movie");
  // Back-ticks don't work in Dart unlike in JavaScript; either single or double quotes should be used.
  print('Your favorite movie is ${favMoviereturn.toUpperCase()}');

  promptUser();
}