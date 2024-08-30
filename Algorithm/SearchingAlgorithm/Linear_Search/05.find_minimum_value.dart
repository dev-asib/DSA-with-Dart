// Problem: Given an array of integers, find the minimum value in the array.

void main(){
  List<int> array = [10,90,20,50,70,5,40,20,30,30,80];

  if(array.isEmpty){
    print("Array is empty");
    return;
  }

  int minimum = array[0];

  for(int i = 0; i < array.length; i++){
    if(minimum > array[i]){
      minimum = array[i];
    }
  }
  print(minimum);
}