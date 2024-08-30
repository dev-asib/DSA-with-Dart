// Problem: Given an array of integers and a target value, count how many times the target value appears in the array.

void main(){
  List<int> array = [90, 30, 40, 60, 20, 10, 80, 90, 20, 10, 10, 80, 60];
  int target = 10;
  int count = 0;

  for(int i = 0; i < array.length; i++){
    if(target == array[i]){
      count++;
    }
  }
  print(count);
}