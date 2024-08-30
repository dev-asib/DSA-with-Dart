void main() {
  List<int> numbers = [1, 2, 3, 40, 55, 61, 73, 84, 95];

  int number = 545;

  int left = 0, right = numbers.length - 1, middle;

  while (left <= right) {
    middle = (left + right) ~/ 2;

    if (numbers[middle] == number) {
      print("The value is found and its position = $middle");
      return;
    } else if (numbers[middle] < number) {
      left = middle + 1;
    } else {
      right = middle - 1;
    }
  }
  print("The value is not found.");
}
