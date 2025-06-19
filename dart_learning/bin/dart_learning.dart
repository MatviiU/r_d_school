import 'dart:io';

void main() {
  String separator = List.filled(40, '=').join();

  print(separator);
  print("Task 1");
  print(separator);
  mathOperations();

  print(separator);
  print("Task 2");
  print(separator);
  comparisonOperations();

  print(separator);
  print("Task 3");
  print(separator);
  logicalOperations();

  print(separator);
  print("Task 4");
  print(separator);
  ternaryOperator();

  print(separator);
  print("Task 5");
  print(separator);
  assignmentOperators();
  print(separator);

  print(separator);
  print("Task 6");
  print(separator);
  conditionals();
  print(separator);

  print(separator);
  print("Task 7");
  print(separator);
  switchStatement();
  print(separator);

  print(separator);
  print("Task 8");
  print(separator);
  loopFor();
  print(separator);

  print(separator);
  print("Task 9");
  print(separator);
  loopWhile();
  print(separator);

  print(separator);
  print("Task 10");
  print(separator);
  breakAndContinue();
  print(separator);
}

void mathOperations() {
  double width = 18.4;
  double height = 30.9;
  double area = width * height;
  double perimeter = (width + height) * 2;
  int squares = area ~/ 1;
  print("Area is $area");
  print("Perimeter is $perimeter");
  print("Full 1x1 squares: $squares");
}

void comparisonOperations() {
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

void logicalOperations() {
  bool hasMoney = true;
  bool isStoreOpen = true;

  bool canBuy = hasMoney && isStoreOpen;
  bool mustWait = !hasMoney || !isStoreOpen;
  print('Can buy: $canBuy');
  print('Must wait: $mustWait');
}

void ternaryOperator() {
  late double temperature;
  stdout.write("Enter a temperature: ");
  String? inputTemperature = stdin.readLineSync();
  temperature = double.parse(inputTemperature!);
  bool isHot = temperature > 25;
  bool isCold = temperature < 10;

  String message1 = isHot ? "Тепло" : "Прохолодно";
  String message2 = isCold ? "Дуже холодно" : message1;

  print("The weather is: $message2");
}

void assignmentOperators() {
  double score = 0;
  int correctAnswers = 17;
  int mistakes = 3;
  int totalQuestions = 20;
  int pointsPerQuestion = 10;
  int pointsPerMistake = 5;
  score += correctAnswers * pointsPerQuestion;
  score -= mistakes * pointsPerMistake;
  score *= 2;
  score /= totalQuestions;

  print("Your score is: $score");
}

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

void switchStatement() {
  late int dayNumber;
  stdout.write("Enter a day number: ");
  String? inputDayNumber = stdin.readLineSync();
  dayNumber = int.parse(inputDayNumber!);
  switch (dayNumber) {
    case 1:
      print("Понеділок");
    case 2:
      print("Вівторок");
    case 3:
      print("Середа");
    case 4:
      print("Четвер");
    case 5:
      print("П'ятниця");
    case 6:
    case 7:
      print("Вихідний день!!");
    default:
      print("Невірний номер дня");
  }
}

void loopFor() {
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    print("Number $i");
  }

  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print("Even number: $i");
    }
  }

  for (int i = 1; i <= 10; i++) {
    sum += i;
  }
  print("Sum of numbers from 1 to 10: $sum");
}

void loopWhile() {
  int i = 10;
  while (i >= 0) {
    if (i % 2 == 0) {
      print("Парне число: $i");
    } else {
      print("Непарне число: $i");
    }
    i--;
  }
}

void breakAndContinue() {
  for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0) {
      continue;
    } else if (i > 15) {
      break;
    }
    print("Number: $i");
  }
}
