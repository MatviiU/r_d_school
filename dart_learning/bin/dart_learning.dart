import 'dart:io';

void main(){
  String separator = List.filled(40, '=').join();
  print(separator);
  print("Task 1");
  print(separator);
  mathOperations();
  print(separator);
  print("Task 2");
  comparisonOperations();
  print(separator);
}

void mathOperations(){
  double width = 18.4;
  double height = 30.9;
  double area = width * height;
  double perimeter = (width + height) * 2;
  int squares = area ~/ 1;
  print("Area is $area");
  print("Perimeter is $perimeter");
  print("Full 1x1 squares: $squares");
}

void comparisonOperations(){
  late double number;
  stdout.write("Enter a number: ");
  String? inputNumber = stdin.readLineSync();
  number = double.parse(inputNumber!);

  bool isGreaterThan50 = number > 50;
  bool isLessThan100 = number < 100;
  bool isDivisibleBy5 = number % 5 == 0;

  print('Is the number greater than 50? $isGreaterThan50');
  print('Is the number less than 100? $isLessThan100');
  print('Is the number divisible by 5? $isDivisibleBy5');
}