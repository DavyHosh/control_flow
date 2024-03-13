import 'dart:io';

void main() {
  // Prompt the user for a number
  stdout.write("Enter a number: ");
  // Handle null input
  String userInput = stdin.readLineSync() ?? ""; 

  // Convert the input to an integer
  try {
    int number = int.parse(userInput);

    // Check the conditions and print the corresponding message
    if (number > 10) {
      print("Your number is greater than 10");
    } else if (number < 10) {
      print("Your number is less than 10");
    } else {
      print("Your number is equal to 10");
    }
  } on FormatException {
    print("Error: Please enter a valid number.");
  }
}
