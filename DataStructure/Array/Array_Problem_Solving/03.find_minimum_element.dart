//Problem03: Write a function that takes an array of integers and returns the minimum element.

import 'dart:io';

void main() {
  List<String> values = stdin.readLineSync()!.trim().split(' ');

  List<int> newValues = values.map(int.parse).toList();

  print(findMin(newValues));
}

int findMin(List<int> array) {
  int min = array[0];
  for (int i = 1; i < array.length; i++) {
    if (min > array[i]) {
      min = array[i];
    }
  }
  return min;
}
