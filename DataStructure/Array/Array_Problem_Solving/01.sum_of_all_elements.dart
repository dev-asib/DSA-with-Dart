//Problem01: Write a function that takes an array of integers and returns the sum of all elements.
import 'dart:io';

void main() {
  List<String> values = stdin.readLineSync()!.trim().split(' ');

  // List<int> newValues = [];
  //
  // for (int j = 0; j < values.length; j++) {
  //   newValues.add(int.parse(values[j]));
  // }

  List<int> newValues = values.map(int.parse).toList();

  print(sumOfElements(newValues));
}

int sumOfElements(List<int> elements) {
  int sum = 0;
  for (int i = 0; i < elements.length; i++) {
    sum = sum + elements[i];
  }
  return sum;
}
