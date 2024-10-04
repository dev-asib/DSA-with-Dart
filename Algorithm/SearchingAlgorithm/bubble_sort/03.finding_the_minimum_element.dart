void main() {
  List<int> numbers = [4, 2, 7, 1, 3];
  int MinElement = findingTheMinElement(numbers);
  print(MinElement);
}

int findingTheMinElement(List<int> array) {
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

  return array[0];
}
