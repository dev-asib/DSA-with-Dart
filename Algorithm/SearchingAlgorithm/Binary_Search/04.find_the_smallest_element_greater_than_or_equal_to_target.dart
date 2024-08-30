// Problem: Given a sorted array of integers and a target value, find the smallest element that is greater than or equal to the target value using binary search. Return -1 if no such element exists.

void main() {
  List<int> numbers = [10, 20, 30, 40, 50, 60, 70, 80];
  int targetNumber = 50;

  print(
      findTheSmallestElementGreaterThanOrEqualToTarget(numbers, targetNumber));
}

int findTheSmallestElementGreaterThanOrEqualToTarget(List<int> array, int target) {
  int left = 0;
  int right = array.length - 1;
  int smallestElementIndex = -1;

  while (left <= right) {
    int middle = (left + right) ~/ 2;

    if (target <= array[middle]) {
      smallestElementIndex = middle;
      right = middle - 1;
    } else {
      left = middle + 1;
    }
  }

  return smallestElementIndex != -1 ? array[smallestElementIndex] : -1;
}
