void main() {
  List<List<int>> fixedArray2D = List<List<int>>.generate(
    5,
    (i) => List<int>.filled(
      3,
      20,
      growable: true,
    ),
  );
  print(fixedArray2D);

  //Accessing elements
  print(fixedArray2D[1][1]);

  //Modify elements
  fixedArray2D[1][0] = 200;
  print(fixedArray2D);

  //Add elements
  fixedArray2D.add([100,200,300]);
  print(fixedArray2D);

  //Remove elements
  fixedArray2D.removeAt(0);
  fixedArray2D.removeAt(1);
  print(fixedArray2D);

  //
  fixedArray2D[0].add(50);
  print(fixedArray2D);

  //
  fixedArray2D[1].removeAt(0);
  print(fixedArray2D);


}
