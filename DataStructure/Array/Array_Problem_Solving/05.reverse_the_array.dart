//Problem05: Write a function that takes an array of integers and returns a new array with the elements in reverse order.

import 'dart:io';

void main() {
  List<String> values = stdin.readLineSync()!.trim().split(' ');

  List<int> newValues = values.map(int.parse).toList();

  print(reverseArray(newValues));
}

List<int> reverseArray(List<int> array) {
  List<int> reverse = [];
  for (int i = 0; i < array.length; i++) {
    reverse.add(array[array.length - 1 - i]);
  }
  return reverse;
}
