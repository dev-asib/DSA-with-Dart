// Problem: Given an array of integers and a target value, find the index of the first occurrence of the target value. Return -1 if the target is not found.

void main(){
  List<int> numbers = [70, 20, 60, 40, 50, 50, 50, 30, 60, 10];
  int targetNumber = 50;

  print(findTheFirstOccurrence(numbers, targetNumber));
}

int findTheFirstOccurrence(List<int> array, int target){
  int firstOccurrence = -1;
  for(int i = 0; i < array.length; i++){
    if(target==array[i]){
      firstOccurrence = i;
      break;
    }
  }

  return firstOccurrence;
}