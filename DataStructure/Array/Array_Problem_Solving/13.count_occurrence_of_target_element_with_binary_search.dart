//Problem: Given a sorted array of integers, count the number of occurrences of a target element. If the target is not found, return 0.

void main(){
  List<int> values = [10, 20, 30, 40, 40, 40, 40, 50, 60, 70, 70, 70, 80, 90, 100];
  int targetValue = 40;

  print(countOccurrenceOfTargetElement(values, targetValue));
}

int countOccurrenceOfTargetElement(List<int> array, int target){
  int firstOccurrence = firstOccurrenceOfTargetElement(array, target);
  if(firstOccurrence == - 1){
    return 0;
  }

  int lastOccurrence = lastOccurrenceOfTargetElement(array, target);
  return lastOccurrence - firstOccurrence + 1;
}

int firstOccurrenceOfTargetElement(List<int> array, int target){
  int left = 0;
  int right = array.length - 1;
  int occurrence = - 1;

  while(left<=right){
    int middle = (left + right) ~/ 2;

    if(target == array[middle]){
      occurrence = middle;
      right = middle - 1;
    } else if(target > array[middle]){
      left = middle + 1;
    } else{
      right = middle - 1;
    }
  }
  return occurrence;
}

int lastOccurrenceOfTargetElement(List<int> array, int target){
  int left = 0;
  int right = array.length - 1;
  int occurrence = -1;

  while(left<=right){
    int middle = (left + right) ~/2;

    if(target == array[middle]){
      occurrence = middle;
      left = middle + 1;
    }  else if(target > array[middle]){
      left = middle + 1;
    } else{
      right = middle - 1;
    }
  }
  return occurrence;
}