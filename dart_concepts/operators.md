### Type test operators
- The `as`, `is`, and `is!` operators are handy for checking types at runtime.

- If you aren't sure that the object is of type T, then use is T to check the type before using the object.
```dart
if (employee is Person) {
  // Type check
  employee.firstName = 'Bob';
}
```
>[!NOTE]
>The code isn't equivalent. If employee is null or not a Person, the first example throws an exception; the second does nothing.

### Cascade notation
- `Cascades (.., ?..)` allow you to make a sequence of operations on the same object. In addition to accessing instance members, you can also call instance methods on that same object. This often saves you the step of creating a temporary variable and allows you to write more fluid code.
- Consider the following code:
```dart
var paint = Paint()
  ..color = Colors.black
  ..strokeCap = StrokeCap.round
  ..strokeWidth = 5.0;
```

>[!NOTE]
>Strictly speaking, the "double dot" notation for cascades isn't an operator. It's just part of the Dart syntax.




