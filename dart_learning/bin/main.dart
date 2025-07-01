import 'dart:math';
import 'names.dart';
import 'package:word_generator/word_generator.dart';

void main() {
  String separator = List.filled(40, '=').join();

  final List<Function> tasks = [listTak, setTask, mapTask];

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
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sum += i;
    }
  }
  print('Сума чисел кратних 3: $sum');

  List<int> temp = [];
  for (int number in numbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }
  print('Довжина нового списку: ${temp.length}');
}

void setTask() {
  Set<String> uniqueNames1 = ukrainianNames1.toSet();
  Set<String> uniqueNames2 = ukrainianNames2.toSet();
  Set<String> commonNames = uniqueNames1.intersection(uniqueNames2);
  print('Унікальні імена: $commonNames');
  print('Кількість унікальних імен: ${commonNames.length}');

  Set<String> namesOnlyInUniqueNames1 = uniqueNames1.difference(uniqueNames2);
  print('Імена що є тільки в uniqueNames1: $namesOnlyInUniqueNames1');

  Set<String> namesOnlyInUniqueNames2 = uniqueNames2.difference(uniqueNames1);
  print('Імена що є тільки в uniqueNames2: $namesOnlyInUniqueNames2');
}

void mapTask() {
  final wordGenerator = WordGenerator();
  List<String> nounList = wordGenerator.randomNouns(50);
  Map<String, int> nounsMap = {for (var noun in nounList) noun: noun.length};
  Map<String, int> tempNouns = Map.fromEntries(
    nounsMap.entries.where((entry) => entry.value % 2 == 0),
  );
  String keysFromTemp = tempNouns.keys.join(', ');
  print(keysFromTemp);
}
