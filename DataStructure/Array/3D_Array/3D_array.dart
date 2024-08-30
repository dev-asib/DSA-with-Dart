void main(){
  List<List<List<int>>> array3D = [
    [
      [1,2,3],
      [4,5,6],
    ],
    [
      [10,20,30],
      [40,50,60],
    ]
  ];
  print(array3D);

  //Accessing elements
  print(array3D[0][1][2]);

  //Modify elements
  array3D[1][1][0]=400;
  print(array3D);

}