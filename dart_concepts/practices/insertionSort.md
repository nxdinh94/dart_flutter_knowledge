```dart
// import 'dart:async';
// import 'package:flutter/material.dart';

void main() {
  List<int> unsortedList = [4, 2, 6, 11, 2,10, 34];
  for(int i = 1; i< unsortedList.length; i++){
    int key = unsortedList[i];
    int j = i - 1;
    while(j >= 0 && key < unsortedList[j]){
      unsortedList[j+1] =  unsortedList[j];
      --j;
    }
    j++;
    unsortedList[j] = key;
  }
  print(unsortedList);
}

Output: [2, 2, 4, 6, 10, 11, 34]
```