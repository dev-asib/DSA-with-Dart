void main() {
  List<int> array = [10, 20, 30, 40, 50, 60, 70, 80, 90];
  print("Original Array = " + array.toString());

  array.insert(0, 2024);
  print("After Inserting Single Element In Specific Index 0 = $array");

  array.insertAll(3, [111, 222, 333]);
  print("After Inserting Multiple Element in Specific Index 3 = $array");

  array.add(1010);
  print("After adding single value in array = $array");

  array.addAll([2025, 2026]);
  print("After adding multiple value in array = $array");

  array.remove(2024);
  print("After remove specific value from array = $array");

  array.removeAt(1);
  print("After remove specific value in specific index 0 from array = $array");

  array.removeLast();
  print("After remove last index value from array = $array");

  array.removeRange(0, 3);
  print("After remove value with specific range from array = $array");

  array.removeWhere((element) => element % 2 != 0);
  print("After remove odd elements from array with using condition = $array");
}
