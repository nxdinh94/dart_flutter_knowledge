##  Exceptions
### Throw
```dart
throw FormatException('Expected at least 1 section');
```
```dart
throw 'Out of llamas!';
```

### Catch
```dart
try {
  breedMoreLlamas();
} on OutOfLlamasException {
  // A specific exception
  buyMoreLlamas();
} on Exception catch (e) {
  // Anything else that is an exception
  print('Unknown exception: $e');
} catch (e) {
  // No specified type, handles all
  print('Something really unknown: $e');
}
```
- Use `on` when you need to specify the exception type. Use catch when your exception handler needs the exception object.
- To partially handle an exception, while allowing it to propagate, use the `rethrow` keyword.

### Finally
- To ensure that some code runs whether or not an exception is thrown, use a `finally` clause

### Assert
- During development, use an assert statement— `assert(<condition>, <optionalMessage>);` —to disrupt normal execution if a boolean condition is false.

- To attach a message to an assertion, add a string as the second argument to assert (optionally with a trailing comma):

```dart
assert(
  urlString.startsWith('https'),
  'URL ($urlString) should start with "https".',
);
```

When exactly do assertions work? That depends on the tools and framework you're using:

- Flutter enables assertions in debug mode.
- Development-only tools such as `webdev serve` typically enable assertions by default.
- Some tools, such as `dart run` and `dart compile js` support assertions through a command-line flag: `--enable-asserts`.
