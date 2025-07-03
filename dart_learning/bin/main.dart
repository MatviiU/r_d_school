import 'dart:math';
import 'package:word_generator/word_generator.dart';
import 'names.dart';

void main() {
  final separator = List.filled(40, '=').join();

  final tasks = <Function>[listTak, setTask, mapTask];

  for (final task in tasks) {
    print(separator);
    task();
  }
  print(separator);
}

void listTak() {
  print('Task 1: List');
  final numbers = List.generate(100, (int index) => Random().nextInt(101));
  print('Список чисел: $numbers');

  print('65-й елемент списку: ${numbers[65]}');

  numbers[50] = 1000000000;
  print('50-й елемент після зміни: ${numbers[50]}');

  final numbersToRemove = <int>{24, 45, 66, 88};
  numbers.removeWhere(numbersToRemove.contains);
  print('Список після видалення елементів: $numbers');

  var sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sum += i;
    }
  }
  print('Сума чисел кратних 3: $sum');

  final temp = <int>[];
  for (final number in numbers) {
    if (number.isEven) {
      temp.add(number);
    }
  }
  print('Довжина нового списку: ${temp.length}');
}

void setTask() {
  final uniqueNames1 = ukrainianNames1.toSet();
  final uniqueNames2 = ukrainianNames2.toSet();
  final commonNames = uniqueNames1.intersection(uniqueNames2);
  print('Унікальні імена: $commonNames');
  print('Кількість унікальних імен: ${commonNames.length}');

  final namesOnlyInUniqueNames1 = uniqueNames1.difference(uniqueNames2);
  print('Імена що є тільки в uniqueNames1: $namesOnlyInUniqueNames1');

  final namesOnlyInUniqueNames2 = uniqueNames2.difference(uniqueNames1);
  print('Імена що є тільки в uniqueNames2: $namesOnlyInUniqueNames2');
}

void mapTask() {
  final wordGenerator = WordGenerator();
  final nounList = wordGenerator.randomNouns(50);
  final nounsMap = <String, int>{
    for (final noun in nounList) noun: noun.length,
  };
  final tempNouns = Map.fromEntries(
    nounsMap.entries.where((entry) => entry.value.isEven),
  );
  final keysFromTemp = tempNouns.keys.join(', ');
  print(keysFromTemp);
}
