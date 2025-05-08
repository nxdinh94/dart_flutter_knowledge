## Null safety
Null safety prevents an error that results from unintentional access of variables set to null. The error is called a null dereference error.For example, say you want to find the absolute value of an int variable i. If i is null, calling i.abs() causes a null dereference error.
1. To enable nullability, you add a `?` to the end of the type declaration.
```dart
String? name  // Nullable type. Can be `null` or string.

String name   // Non-nullable type. Cannot be `null` but can be string.
```
2. Nullable variable default to `null`, while non-nullable variable doesn't have default value. 
3. You can't access some property or calling a method on expression that have nullable value.

## Default value
- Uninitialized variable have a nullable-type have an initial value of `null`.
- You must initial value for non-nullale variable before using them.
- You don't need to initial value for variable as it declared. But make sure that variables have value before it's being used.
## Late variables

- The `late` modifier has two use cases:
    - Declare a non-nullable variable and it's initialized after declaration.
    - Lazily initializing a variable.
- If you're sure that a variable is set before it's used, but Dart disagrees, you can fix the error by marking the variable as `late`: 

```dart
    late String description;

    void main() {
    description = 'Feijoada!';
    print(description);
    }
```
- ### What is lazyly initial a variable
    - When you mark a variable as `late` but initialize it at its declaration, then the initializer runs `the first time` the variable is `used`. 
        - That's mean: if this variable is being used, then run the expression or function which was assigned to it. It's very handful incase the expression or function are assigned to it are so expensive.
        - In the following example, if the `temperature variable` is never used, then the expensive `readThermometer()` function is never called:
        ```dart
        // This is the program's only call to readThermometer().
        late String temperature = readThermometer(); // Lazily initialized.
        ```
## Final and const
-  `final and const` is about the *immutable* variable during compile time while `var` is opposite.
