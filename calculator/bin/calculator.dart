import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print('\nSimple Calculator');
    print('1. Addition');
    print('2. Subtraction');
    print('3. Multiplication');
    print('4. Division');
    print('5. Modulus');
    print('6. Power');
    print('7. Square Root');
    print('8. Absolute Value');
    print('0. Exit');

    stdout.write('Choose an option: ');
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 0) {
      print('Calculator closed.');
      break;
    }

    if (choice == 7 || choice == 8) {
      stdout.write('Enter a number: ');
      double num = double.parse(stdin.readLineSync()!);

      switch (choice) {
        case 7:
          if (num < 0) {
            print('Cannot calculate square root of a negative number.');
          } else {
            print('Result: ${sqrt(num)}');
          }
          break;

        case 8:
          print('Result: ${num.abs()}');
          break;
      }
    } else if (choice >= 1 && choice <= 6) {
      stdout.write('Enter first number: ');
      double num1 = double.parse(stdin.readLineSync()!);

      stdout.write('Enter second number: ');
      double num2 = double.parse(stdin.readLineSync()!);

      double result;

      switch (choice) {
        case 1:
          result = num1 + num2;
          print('Result: $result');
          break;

        case 2:
          result = num1 - num2;
          print('Result: $result');
          break;

        case 3:
          result = num1 * num2;
          print('Result: $result');
          break;

        case 4:
          if (num2 == 0) {
            print('Cannot divide by zero.');
          } else {
            result = num1 / num2;
            print('Result: $result');
          }
          break;

        case 5:
          if (num2 == 0) {
            print('Cannot calculate modulus by zero.');
          } else {
            result = num1 % num2;
            print('Result: $result');
          }
          break;

        case 6:
          result = pow(num1, num2).toDouble();
          print('Result: $result');
          break;
      }
    } else {
      print('Invalid option.');
    }
  }
}