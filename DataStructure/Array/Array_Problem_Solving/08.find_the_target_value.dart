void main() {
  List<int> numbers = [10, 20, 30, 40, 50, 60, 70, 80, 90];

  int target = 30;
  int left = 0;
  int right = numbers.length - 1;

  int findTheTargetValue() {
    while (left <= right) {
      int middle = (left + right) ~/ 2;
      if (target == numbers[middle]) {
        return middle;
      } else if (target > numbers[middle]) {
        left = middle + 1;
      } else {
        right = middle - 1;
      }
    }
    return -1;
  }

  print(findTheTargetValue());
}
