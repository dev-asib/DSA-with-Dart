// Problem: Given an array of integers, find the index of the maximum value.
void main(){
  List<int> array = [10, 20, 90, 50, 30, 7, 5, 80, 60];

  if(array.isEmpty){
    print("Array is empty.");
    return;
  }

  int maximum = array[0];
  int index = 0;

  for(int i = 0; i < array.length; i++){
    if(maximum < array[i]){
      maximum = array[i];
      index = i;
    }
  }
  print(index);
}