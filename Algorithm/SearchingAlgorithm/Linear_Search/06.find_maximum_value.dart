// Problem: Given an array of integers, find the maximum value in the array.

void main(){
  List<int> array = [80, 20, 50, 10, 90, 20, 30, 10, 40];

  if(array.isEmpty){
    print("Array is empty.");
    return;
  }

  int maximum = array[0];

  for(int i = 0; i < array.length; i++){
    if(maximum < array[i]){
      maximum = array[i];
    }
  }
  print(maximum);
}