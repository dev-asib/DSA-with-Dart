void main(){
  List<int> array1D = [10,20,30,40,50,60];

  //accessing element
  print(array1D);
  print(array1D[1]);

  //modify element
  array1D[0]=100;
  print(array1D);

  //add element in array
  array1D.add(200);
  print(array1D);

  array1D.addAll([300,400,500]);
  print(array1D);

}