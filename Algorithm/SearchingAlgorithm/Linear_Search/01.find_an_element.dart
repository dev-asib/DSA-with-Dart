//Problem: Given an array of integers and a target value, find if the target value exists in the array. Return true if found, false otherwise.

void main(){
  List<int> numbers = [70, 20, 90, 40, 50, 60, 10, 80, 30];
  int targetNumbers = 60;

  print(findAnElement(numbers, targetNumbers));
}

bool findAnElement(List<int> array, int target){

  for(int i = 0; i < array.length; i++){
    if(target==array[i]){
      return true;
    }
  }
  return false;
}