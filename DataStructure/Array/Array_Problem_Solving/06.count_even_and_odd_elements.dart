//Problem06: Write a function that takes an array of integers and returns the count of even and odd elements.

import 'dart:io';

void main() {
  List<String> values = stdin.readLineSync()!.trim().split(' ');
  List<int> newValues = values.map(int.parse).toList();

  print(countEvenAndOddElements(newValues));
}

String countEvenAndOddElements(List<int> array) {
  int countOfEvenValues = 0;
  int countOfOddValues = 0;
  for (int i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0) {
      countOfEvenValues++;
    } else {
      countOfOddValues++;
    }
  }

  return 'even: $countOfEvenValues' +
      ' ' +
      'and' +
      ' ' +
      'odd: $countOfOddValues';
}
