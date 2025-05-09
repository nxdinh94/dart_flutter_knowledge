## Functions
### 1. For functions that contain just one expression, you can use a shorthand syntax:
```dart
bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;
```
> [!NOTE]  
> The statment between `=>` and `;` must be returned a value;

### 2. Named parameters
- When defining a function, use `{param1, param2, …}` to specify named parameters.

- If you don't provide value for it, it is nullable and its value should be `null`
```dart
void enableFlags({bool? bold, bool? hidden}) {
    ...
}
```
- Provide default value for it
```dart
/// Sets the [bold] and [hidden] flags ...
void enableFlags({bool bold = false, bool hidden = false}) {
  ...
}

// bold will be true; hidden will be false.
enableFlags(bold: true);
```

- Making named `parameter` to be **mandatory**, marked it as `required`

```dart
const Scrollbar({super.key, required Widget? child});
```
> [!NOTE]  
> A parameter marked as required can still be nullable:
```dart
const Scrollbar({super.key, required Widget? child});
```




### 3. Optional positional parameters
- Wrapping any function parameter to mark them as optional parameters. 
- It's also a *nullable type*.
- The default value should be `null` without provide them value.
```dart
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}
```



### 4. The main() function
- Every app must have a top-level `main()` function, which serves as the entrypoint to the app. 
- The `main()` function returns *void* and has an `optional List<String> `parameter for arguments.
- Here's an example of the main() function for a command-line app that takes arguments:

```dart
// Run the app like this: dart run args.dart 1 test
void main(List<String> arguments) {
  print(arguments);

  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
}
```
- You can pass a function as a parameter to another function. For example:

```dart
void printElement(int element) {
  print(element);
}

var list = [1, 2, 3];

// Pass printElement as a parameter.
list.forEach(printElement); 
//or 
list.foreach((e)=> printElement(e))

```

### 5. Anonymous functions
- An anonymous function resembles a named function as it has:
    - Zero or more parameters, comma-separated
    - Optional type annotations between parentheses.

```dart
([[Type] param1[, ...]]) {
  codeBlock;
}
```
- If the function contains only a single expression or return statement, you can shorten it using arrow notation.

### 6. Lexical scope
```dart
bool topLevel = true;

void main() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}
```

### 7. Lexical closure
```dart
/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void main() {
  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}
```
### 8. Tear-offs
### 9. Return values
- To return multiple values in a function, aggregate the values in a record.

```dart
(String, int) foo() {
  return ('something', 42);
}
```

### 10. Generators
When you need to lazily produce a sequence of values, consider using a generator function. Dart has built-in support for two kinds of generator functions:

- Synchronous generator: Returns an `Iterable` object.
- Asynchronous generator: Returns a `Stream` object.

To implement a synchronous generator function, mark the function body as `sync*`, and use `yield` statements to deliver values:
```dart
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}
```
To implement an asynchronous generator function, mark the function body as async*, and use yield statements to deliver values:

```dart
Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}
```

### 11. External functions
An external function is a function whose body is implemented separately from its declaration. Include the external keyword before a function declaration, like so:

```dart
external void someFunc(int i);
```