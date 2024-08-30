// Problem: Given an array of integers and a target value, return a list of all indices where the target value appears.

void main(){
  List<int> array = [10, 20, 90, 10, 40, 70, 10, 80];
  int target = 10;
  List<int> indexOfTargetElement = [];

  for(int i = 0; i < array.length; i++){
    if(target == array[i]){
      indexOfTargetElement.add(i);
    }
  }
  print(indexOfTargetElement);
}