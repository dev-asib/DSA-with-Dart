void main() {
  List<int> numbers = [10, 2, 40, 3, 15, 11];
  List<int> values = [10, 20, 30, 40, 50];
  print(numbers);
  bubbleSort(numbers);
  print(numbers);
  print("\n\n");
  print(values);
  bubbleSort(values);
  print(values);
}

void bubbleSort(List<int> array) {
  int swap, counter = 0, sizeOfArray = array.length;

  for (int i = 0; i < sizeOfArray - 1; i++) {
    swap = 0;
    for (int j = 0; j < sizeOfArray - 1; j++) {
      counter++;
      if (array[j] > array[j + 1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
        swap = 0;
      }
    }
    if (swap == 0) {
      break;
    }
  }

  print("Total Count = $counter");
}
