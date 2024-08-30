void main() {

  List<List<List<int>>> fixedArray3D = List<List<List<int>>>.generate(
    2,
      (i)=> List<List<int>>.generate(
        3,
          (j) => List<int>.filled(3,10),
      ),
    growable: true,
  );

  print(fixedArray3D);

  //Accessing elements
  print(fixedArray3D[0][2][0]);

  //Modify elements
  fixedArray3D[0][1][2]=555;
  print(fixedArray3D);

  // add elements
  fixedArray3D.add([[11,22,33]]);
  print(fixedArray3D);

  //remove elements
  fixedArray3D.removeAt(0);
  fixedArray3D.removeAt(1);
  print(fixedArray3D);

  //
  fixedArray3D[0][0].add(1010);
  print(fixedArray3D);

  //

}