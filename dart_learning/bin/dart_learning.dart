import 'dart:io';

void main() {
  String separator = List.filled(40, '=').join();

  // print(separator);
  // print("Task 1");
  // print(separator);
  // mathOperations();
  //
  // print(separator);
  // print("Task 2");
  // print(separator);
  // comparisonOperations();
  //
  // print(separator);
  // print("Task 3");
  // print(separator);
  // logicalOperations();

  // print(separator);
  // print("Task 4");
  // print(separator);
  // ternaryOperator();
  // print(separator);
  // print("Task 5");
  // print(separator);
  // assignmentOperators();
  // print(separator);

  print(separator);
  print("Task 6");
  print(separator);
  conditionals();
  print(separator);
}

// void mathOperations(){
//   double width = 18.4;
//   double height = 30.9;
//   double area = width * height;
//   double perimeter = (width + height) * 2;
//   int squares = area ~/ 1;
//   print("Area is $area");
//   print("Perimeter is $perimeter");
//   print("Full 1x1 squares: $squares");
// }
//
// void comparisonOperations(){
//   late double number;
//   stdout.write("Enter a number: ");
//   String? inputNumber = stdin.readLineSync();
//   number = double.parse(inputNumber!);
//
//   bool isGreaterThan50 = number > 50;
//   bool isLessThan100 = number < 100;
//   bool isDivisibleBy5 = number % 5 == 0;
//
//   print('Is the number greater than 50? $isGreaterThan50');
//   print('Is the number less than 100? $isLessThan100');
//   print('Is the number divisible by 5? $isDivisibleBy5');
// }
//
// void logicalOperations(){
//   bool hasMoney = true;
//   bool isStoreOpen = true;
//
//   bool canBuy = hasMoney && isStoreOpen;
//   bool mustWait = !hasMoney || !isStoreOpen;
//   print('Can buy: $canBuy');
//   print('Must wait: $mustWait');
// }

// void  ternaryOperator(){
//   late double temperature;
//   stdout.write("Enter a temperature: ");
//   String? inputTemperature = stdin.readLineSync();
//   temperature = double.parse(inputTemperature!);
//   bool isHot = temperature > 25;
//   bool isCold = temperature < 10;
//
//   String message1 = isHot ? "Тепло" : "Прохолодно";
//   String message2 = isCold ? "Дуже холодно" : "";
//
//   if(message2.isNotEmpty){
//     print("The weather is: $message2");
//   } else {
//     print("The weather is: $message1");
//   }
// }

// void  assignmentOperators(){
//   double score = 0;
//   int correctAnswers = 17;
//   int mistakes = 3;
//   int totalQuestions = 20;
//   int pointsPerQuestion = 10;
//   int pointsPerMistake = 5;
//   score += correctAnswers * pointsPerQuestion;
//   score -= mistakes * pointsPerMistake;
//   score *= 2;
//   score /= totalQuestions;
//
//   print("Your score is: $score");
// }

void conditionals() {
  late double examScore;
  stdout.write("Enter your exam score: ");
  String? inputScore = stdin.readLineSync();
  examScore = double.parse(inputScore!);

  if (examScore > 90) {
    print("Відмінно");
  } else if (examScore >= 75 && examScore <= 90) {
    print("Добре");
  } else if (examScore >= 60 && examScore < 75) {
    print("Задовільно");
  } else if (examScore < 20) {
    print("Повторити курс");
  } else {
    print("Незадовільно");
  }
}
