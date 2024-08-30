//Problem: Given a sorted array of integers, find the smallest element that is greater than or equal to the target element. If such an element does not exist, return -1.

void main() {
  List<int> values = [10, 20, 30, 40, 50, 50, 50, 60, 70, 80, 90];
  int targetValue = 50;

  print(findTheSmallestElementThatGreaterThanOrEqualToTargetElement(
    values, targetValue, ));
}

int findTheSmallestElementThatGreaterThanOrEqualToTargetElement(List<int> array, int target) {
  int left = 0;
  int right = array.length - 1;
  int smallestElement = -1;

  while (left <= right) {
    int middle = (left + right) ~/ 2;

    if(target <= array[middle]){
      smallestElement = array[middle];
      right = middle - 1;
    } else {
      left = middle + 1;
    }
  }
  return smallestElement;
}
