## Generics In Dart
Generics is a way to create a class, or function that can work with different types of data (objects). If you look at the internal implementation of List class, it is a generic class. It can work with different data types like int, String, double, etc.
## Generics Type Variable
- `T type`
- `E Element`
- `K Key`
- `V value`

## Generics Methods
```dart
// Define generic method
T genericMethod<T>(T value) {
  return value;
}

void main() {
  // call the generic method
  print("Int: ${genericMethod<int>(10)}");
  print("Double: ${genericMethod<double>(10.5)}");
  print("String: ${genericMethod<String>("Hello")}");
}
```
## Restricting the Type of Data
While implementing generics, you can restrict the type of data that can be used with the class or method. This is done by using the **extends** keyword. See the example below.
### Example 4: Generic Class With Restriction
```dart
//In this example below, there is a Data class that works only with int and double types. It will not work with other types..
// Define generic class with bounded type
class Data<T extends num> {
  T data;
  Data(this.data);
}

void main() {
  // create an object of type int and double
  Data<int> intData = Data<int>(10);
  Data<double> doubleData = Data<double>(10.5);
  // print the data
  print("IntData: ${intData.data}");
  print("DoubleData: ${doubleData.data}");
  // Not Possible
  // Data<String> stringData = Data<String>("Hello");
}
```



