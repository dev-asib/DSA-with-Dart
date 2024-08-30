//Problem04: Write a function that takes an array of integers and a target integer, and returns the index of the target integer in the array. If the target is not found, return -1.

import 'dart:io';

void main() {
  List<String> values = stdin.readLineSync()!.trim().split(' ');
  int? targetValue = int.parse(stdin.readLineSync()!);

  List<int> newValues = values.map(int.parse).toList();

  print(searchElement(newValues, targetValue));
}

int searchElement(List<int> array, int target) {
  for (int i = 0; i < array.length; i++) {
    if (target == array[i]) {
      return i;
    }
  }
  return -1;
}
