## Concept
Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements if they are in the wrong order. This algorithm is not suitable for large data sets as its average and worst-case time complexity are quite high.

## Implement
```dart

import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  List<int> unsortedList = [4, 2, 6, 11, 10, 34];
  for(int i = 0; i < unsortedList.length; i ++){
    for(int j = i + 1; j< unsortedList.length; j++){
      int temp;
      if(unsortedList[i]> unsortedList[j]){
        temp = unsortedList[i];
        unsortedList[i] =  unsortedList[j];
        unsortedList[j] = temp;
      }
    }
  }
  print(unsortedList);
  
}

```
## Output
```dart
[2, 4, 6, 10, 11, 34]
```