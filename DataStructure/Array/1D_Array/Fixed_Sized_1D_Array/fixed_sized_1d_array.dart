void main() {
  List<int> fixedArray1D = List<int>.filled(
    5,
    10,
    growable: true,
  );
  print(fixedArray1D);

  //Accessing elements
  print(fixedArray1D[0]);

  //Modify elements
  fixedArray1D[1] = 200;
  print(fixedArray1D);

  //Add elements
  fixedArray1D.add(100);
  print(fixedArray1D);

  //remove elements
  fixedArray1D.removeAt(1);
  print(fixedArray1D);

}
