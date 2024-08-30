// Problem: Given an array of integers and a target value, find the index of the last occurrence of the target value. Return -1 if the target is not found.

void main(){
  List<int> numbers = [70, 20, 60, 40, 50, 50, 20, 30, 60, 50, 10];
  int targetNumber = 50;

  print(findTheLastOccurrence(numbers, targetNumber));
}

int findTheLastOccurrence(List<int> array, int target){
  int lastOccurrence = -1;

  for(int i = 0; i < array.length; i++){
    if(target == array[i]){
      lastOccurrence = i;
    }
  }
  return lastOccurrence;
}