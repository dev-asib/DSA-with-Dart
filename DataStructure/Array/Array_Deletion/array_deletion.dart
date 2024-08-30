void main(){

  List<int> array = [10,20,30,40,50,60,70,80,90,11,23,33];

  print(array);

  array.remove(20);
  print(array);

  array.removeAt(0);
  print(array);

  array.removeLast();
  print(array);

  array.removeRange(0, 2);
  print(array);

  array.removeWhere((array)=> array%2==0);
  print(array);


  List<int> array2 = [10,20,30,40,50,60,70,80,90,11,23,33];

  print(array2);
  array2.removeWhere((element){
    return true;
  });

  print(array2);


  List<int> array3 = [1,2,3,4,5];
  print(array3);
  array3.removeWhere((element)=>false);
  print(array3);

  array3.removeWhere((element)=>element%2 !=0);
  print(array3);


  array3.clear();
  print(array3);

  


}