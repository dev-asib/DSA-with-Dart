void main(){
  List<List<int>> array2D = [
    [1,2,3,4],
    [5,6,7,8],
    [9,10,11,12],
  ];

  print(array2D);

  //Accessing elements
  print(array2D[1]);
  print(array2D[2][1]);

  //Modify elements
  array2D[1][2]=500;
  print(array2D);

}