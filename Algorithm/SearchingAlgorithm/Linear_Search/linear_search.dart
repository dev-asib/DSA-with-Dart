import 'dart:io';

void main() {
  List<int> numbers = [10, 20, 30, 40, 50, 60, 70];

  stdout.write("Enter your target value = ");
  int? number = int.parse(stdin.readLineSync()!);

  int position = -1;

  for (int i = 0; i < numbers.length; i++) {
    if (number == numbers[i]) {
      position = i + 1;
      break;
    }
  }

  if (position != -1) {
    print("The values is found and It's Position = $position");
  } else {
    print("The value is not found.");
  }
}
