// Problem: Given a sorted array of integers and a target value, find the index of the last occurrence of the target value using binary search. Return -1 if the target is not found.

void main() {
  List<int> numbers = [10, 20, 30, 40, 50, 50, 50, 60, 70, 80];
  int targetNumber = 50;

  print(findTheLastOccurrence(numbers, targetNumber));
}

int findTheLastOccurrence(List<int> array, int target) {
  int left = 0;
  int right = array.length - 1;
  int lastOccurrence = -1;

  while (left <= right) {
    int middle = (left + right) ~/ 2;

    if (target == array[middle]) {
      lastOccurrence = middle;
      left = middle + 1;
    } else if (target < array[middle]) {
      right = middle - 1;
    } else {
      left = middle + 1;
    }
  }
  return lastOccurrence;
}
