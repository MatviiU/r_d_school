import 'dart:math';

void main() {
  String separator = List.filled(40, '=').join();

  final List<Function> tasks = [listTak];

  for (final task in tasks) {
    print(separator);
    task();
  }
  print(separator);
}

void listTak() {
  print("Task 1: List");
  List<int> numbers = List.generate(100, (int index) => Random().nextInt(101));
  print('Список чисел: $numbers');

  print('65-й елемент списку: ${numbers[65]}');

  numbers[50] = 1000000000;
  print('50-й елемент після зміни: ${numbers[50]}');

  final Set<int> numbersToRemove = {24, 45, 66, 88};
  numbers.removeWhere((int number) => numbersToRemove.contains(number));
  print('Список після видалення елементів: $numbers');

  int sum = 0;
  for (int number in numbers){
    if (number % 3 == 0){
      sum += number;
    }
  }
  print('Сума чисел кратних 3: $sum');

  List<int> temp = [];
  for (int number in numbers){
    if (number % 2 == 0){
      temp.add(number);
    }
  }
  print('Довжина нового списку: ${temp.length}');
}
