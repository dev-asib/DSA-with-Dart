// Problem: Given a sorted array of integers and a target value, find the largest element that is less than or equal to the target value using binary search. Return -1 if no such element exists.

void main() {
  List<int> numbers = [10, 20, 30, 40, 50, 60, 70, 80];
  int targetNumber = 50;

  print(findTheLargestElementLessThanOrEqualToTarget(numbers, targetNumber));
}

int findTheLargestElementLessThanOrEqualToTarget(List<int> array, int target) {
  int left = 0;
  int right = array.length - 1;
  int largestTargetElementIndex = -1;

  while (left <= right) {
    int middle = (left + right) ~/ 2;

    if (target >= array[middle]) {
      largestTargetElementIndex = middle;
      left = middle + 1;
    } else {
      right = middle - 1;
    }
  }

  return largestTargetElementIndex != -1 ? array[largestTargetElementIndex] : -1;
}
