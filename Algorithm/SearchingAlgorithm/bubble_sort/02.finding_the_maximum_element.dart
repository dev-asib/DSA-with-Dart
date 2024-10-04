void main() {
  List<int> numbers = [3, 5, 2, 8, 1];
  int maxElement = findingTheMaxElement(numbers);
  print(maxElement);
}

int findingTheMaxElement(List<int> array) {
  int sizeOfArray = array.length;

  for (int i = 0; i < sizeOfArray - 1; i++) {
    bool swapped = false;
    for (int j = 0; j < sizeOfArray - 1 - i; j++) {
      if (array[j] > array[j + 1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
        swapped = true;
      }
    }
    if (!swapped) break;
  }

  return array[sizeOfArray - 1];
}
