//Problem: Given a sorted array of integers, count the number of occurrences of a target element. If the target is not found, return 0.

void main(){
  List<int> values = [10, 20, 30, 40, 40, 40, 40, 50, 60, 70, 70, 70, 80, 90, 100];
  int targetValue = 40;

  print(countOccurrenceOfTargetElement(values, targetValue));
}

int countOccurrenceOfTargetElement(List<int> array, int target){
  int targetCount = 0;

  for(int i = 0; i < array.length; i++){
    if(target == array[i]){
      targetCount++;
    }
  }
  return targetCount;
}