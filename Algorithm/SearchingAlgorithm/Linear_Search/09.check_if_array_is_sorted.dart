// Problem: Given an array of integers, determine if the array is sorted in ascending order.

void main() {
  List<int> array = [10, 20, 30, 35, 40, 50];
  bool isAscending = true;

  for (int i = 1; i < array.length; i++) {
    if (array[i - 1] > array[i]) {
      isAscending = false;
      break;
    }
  }

  if (isAscending == true) {
    print("Array is sorted in ascending order.");
  } else {
    print("Array is not sorted in ascending order.");
  }
}
