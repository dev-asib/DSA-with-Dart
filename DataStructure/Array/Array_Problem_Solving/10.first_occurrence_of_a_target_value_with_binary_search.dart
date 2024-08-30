//Problem: Given a sorted array of integers, find the first occurrence of a target element. If the target is not found, return -1.

void main() {
  List<int> numbers = [10, 20, 30, 40, 40, 40, 40, 40, 50, 60, 70, 80, 80, 90];
  int targetNumber = 40;

  print(firstOccurrenceOfTargetValue(numbers, targetNumber));
}

int firstOccurrenceOfTargetValue(List<int> values, int targetValue) {
  int left = 0;
  int right = values.length - 1;
  int occurrence = -1;

  while (left <= right) {
    int middle = (left + right) ~/ 2;
    if (targetValue == values[middle]) {
      occurrence = middle;
      right = middle - 1;
    } else if (targetValue > values[middle]) {
      left = middle + 1;
    } else {
      right = middle - 1;
    }
  }
  return occurrence;
}
