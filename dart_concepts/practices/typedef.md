```dart
// import 'dart:async';
// import 'package:flutter/material.dart';
typedef IntList = List<int>;
typedef GenericList<T> = List<T>;
void main() {
  IntList arr = [1, 3, 5, 3, 3];
  print(arr.runtimeType);
  
  //   Typedef with generic
  GenericList<String> stringArr = ['a', 'b', 'c', 'd'];
  print(stringArr.runtimeType);
  
  GenericList<int> intArr = [1, 3, 5, 3, 3];
  print(intArr.runtimeType); 
}
```