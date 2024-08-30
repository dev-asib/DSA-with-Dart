void main() {
  List<int> numbers = [1, 2, 3, 4, 4, 5, 6, 7, 5, 5, 5, 8, 9];
  int target = 4;
  for (int i = 0; i < numbers.length; i++) {
    if (target == numbers[i]) {
      print("The value is ${numbers[i]} & Position = $i");
      break;
    }
  }
}
