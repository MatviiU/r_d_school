import 'dart:io';

void main() {
  final separator = List.filled(40, '=').join();

  final tasks = <Function> [
    mathOperations,
    comparisonOperations,
    logicalOperations,
    ternaryOperator,
    assignmentOperators,
    conditionals,
    switchStatement,
    loopFor,
    loopWhile,
    breakAndContinue,
  ];

  for (final task in tasks) {
    print(separator);
    task();
  }

  print(separator);
}

void mathOperations() {
  print('Task 1: Math Operations');
  final width = 18.4;
  final height = 30.9;
  final area = width * height;
  final perimeter = (width + height) * 2;
  final squares = area ~/ 1;
  print('Area is $area');
  print('Perimeter is $perimeter');
  print('Full 1x1 squares: $squares');
}

void comparisonOperations() {
  print('Task 2: Comparison Operations');
  late double number;
  stdout.write('Enter a number: ');
  final inputNumber = stdin.readLineSync();
  number = double.parse(inputNumber!);

  final isGreaterThan50 = number > 50;
  final isLessThan100 = number < 100;
  final isDivisibleBy5 = number % 5 == 0;

  print('Is the number greater than 50? $isGreaterThan50');
  print('Is the number less than 100? $isLessThan100');
  print('Is the number divisible by 5? $isDivisibleBy5');
}

void logicalOperations() {
  print('Task 3: Logical Operations');
  final hasMoney = true;
  final isStoreOpen = true;

  final canBuy = hasMoney && isStoreOpen;
  final mustWait = !hasMoney || !isStoreOpen;
  print('Can buy: $canBuy');
  print('Must wait: $mustWait');
}

void ternaryOperator() {
  print('Task 4: Ternary Operator');
  late double temperature;
  stdout.write('Enter a temperature: ');
  final inputTemperature = stdin.readLineSync();
  temperature = double.parse(inputTemperature!);
  final isHot = temperature > 25;
  final isCold = temperature < 10;

  final message1 = isHot ? 'Тепло' : 'Прохолодно';
  final message2 = isCold ? 'Дуже холодно' : message1;

  print('The weather is: $message2');
}

void assignmentOperators() {
  print('Task 5: Assignment Operators');
  double score = 0;
  final correctAnswers = 17;
  final mistakes = 3;
  final totalQuestions = 20;
  final pointsPerQuestion = 10;
  final pointsPerMistake = 5;
  score += correctAnswers * pointsPerQuestion;
  score -= mistakes * pointsPerMistake;
  score *= 2;
  score /= totalQuestions;

  print('Your score is: $score');
}

void conditionals() {
  print('Task 6: Conditionals (if-else)');
  late double examScore;
  stdout.write('Enter your exam score: ');
  final inputScore = stdin.readLineSync();
  examScore = double.parse(inputScore!);

  if (examScore > 90) {
    print('Відмінно');
  } else if (examScore >= 75 && examScore <= 90) {
    print('Добре');
  } else if (examScore >= 60 && examScore < 75) {
    print('Задовільно');
  } else if (examScore < 20) {
    print('Повторити курс');
  } else {
    print('Незадовільно');
  }
}

void switchStatement() {
  print('Task 7: Switch Statement');
  late int dayNumber;
  stdout.write('Enter a day number: ');
  final inputDayNumber = stdin.readLineSync();
  dayNumber = int.parse(inputDayNumber!);
  switch (dayNumber) {
    case 1:
      print('Понеділок');
    case 2:
      print('Вівторок');
    case 3:
      print('Середа');
    case 4:
      print('Четвер');
    case 5:
      print("П'ятниця");
    case 6:
    case 7:
      print('Вихідний день!!');
    default:
      print('Невірний номер дня');
  }
}

void loopFor() {
  print('Task 8: For Loop');
  var sum = 0;
  for (var i = 1; i <= 10; i++) {
    print('Number $i');
  }

  for (var i = 1; i <= 10; i++) {
    final isEven = i.isEven;
    if (isEven) {
      print('Even number: $i');
    }
  }

  for (var i = 1; i <= 10; i++) {
    sum += i;
  }
  print('Sum of numbers from 1 to 10: $sum');
}

void loopWhile() {
  print('Task 9: While Loop');
  var i = 10;
  while (i >= 0) {
    final isEven = i.isEven;
    if (isEven) {
      print('Парне число: $i');
    } else {
      print('Непарне число: $i');
    }
    i--;
  }
}

void breakAndContinue() {
  print('Task 10: Break and Continue');
  for (var i = 1; i <= 20; i++) {
    if (i % 3 == 0) {
      continue;
    } else if (i > 15) {
      break;
    }
    print('Number: $i');
  }
}
