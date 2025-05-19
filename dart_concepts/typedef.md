A type alias—often called a `typedef` because it's declared with the keyword `typedef`
### Example:
```dart
typedef IntList = List<int>;
IntList il = [1, 2, 3];
```
### A type alias can have type parameters:

```dart
typedef ListMapper<X> = Map<X, List<X>>;
Map<String, List<String>> m1 = {}; // Verbose.
ListMapper<String> m2 = {}; // Same thing but shorter and clearer.
```
### How to Use Typedef with Dart Functions?
1. When we use typedef, we can define the parameters of the function.
```dart
typedef function_name ( parameters );
```
2. With the help of typedef, we can also assign a variable to a function.
```dart
typedef variable_name = function_name;
```
3. After assigning the variable, if we have to invoke it, then we go as:
```dart
variable_name( parameters );
```
### Using typedef as a parameter of a function
```dart
// Dart program to show the usage of typedef
// Defining alias name
typedef GeeksForGeeks(int a, int b);

// Defining Geek1 function
Geek1(int a, int b) {
    print("This is Geek1");
    print("$a and $b are lucky geek numbers !!");
}

// Defining a function with a typedef variable
number(int a, int b, GeeksForGeeks geek) {
    print("Welcome to GeeksForGeeks");
    geek(a, b);
}

// Main Function
void main() {
    // Calling number function
    number(21, 23, Geek1);
}
```
### Typedef for Variables and Collections
```dart
typedef name = Collection;
```