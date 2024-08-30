//Problem02: Write a function that takes an array of integers and returns the maximum element.

import 'dart:io';

void main() {
  List<String> values = stdin.readLineSync()!.trim().split(' ');

  List<int> newValues = values.map(int.parse).toList();

  print(findMax(newValues));
}

int findMax(List<int> array) {
  int max = array[0];
  for (int i = 1; i < array.length; i++) {
    if (max < array[i]) {
      max = array[i];
    }
  }
  return max;
}
