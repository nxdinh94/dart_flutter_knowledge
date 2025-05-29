# Future in dart
In dart, the Future represents a value or error that is not yet available. It is used to represent a potential value, or error, that will be available at some time in the future.

`You can also create a future by using Future.value() method. Here the function will return Future<String> immediately.
`
```dart
// function that returns a future
Future<String> getUserName() {
  return Future.value('Mark');
}
```
# State Of Future
- Uncompleted
- Completed
## Uncompleted
When you call an asynchronous function, it returns to an uncompleted future. It means the future is waiting for the function asynchronous operation to finish or to throw an error.
## Completed
It can be completed with value or completed with error. `Future<int>` produces an int value, and `Future<String>` produces a String value. If the future doesn’t produce any value, then the type of future is `Future<void>`.


# Async And Await In Dart
- `Async/await` is a feature in Dart that allows us to write asynchronous code that looks and behaves like synchronous code, making it easier to read.

- The `async` and `await` keywords both provide a declarative way to define an asynchronous function and use their results. You can use the `async` keyword before a function body to make it asynchronous. You can use the `await` keyword to get the completed result of an asynchronous expression.
## Handling Errors  
You can handle errors in the dart async function by using try-catch. You can write `try-catch` code the same way you write synchronous code.

# Streams In Dart
## How To Create Stream In Dart
You can create a stream in dart by using `Stream` class. Here the function will return `Stream<String>` after 5 seconds.
```dart
// function that returns a stream
Stream<String> getUserName() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Mark';
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  await Future.delayed(Duration(seconds: 1));
  yield 'Smith';
}
```

>[!INFO]
>Here yield returns the value from the stream. To use yield you have to use `async*`.
## How To Use Stream In Dart
You can use stream in dart by using `await for` loop.

```dart
// function that returns a stream
Stream<String> getUserName() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Mark';
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  await Future.delayed(Duration(seconds: 1));
  yield 'Smith';
}

// main function
void main() async {
  // you can use await for loop to get the value from stream
  await for (String name in getUserName()) {
    print(name);
  }
}
```
## Types Of Stream
- Single Subscription streams (default)
- Broadcast streams
```dart
StreamController<data_type> controller = StreamController<data_type>.broadcast();
```
## How Streams Are Created
```dart
StreamController<data_type> controller = StreamController<data_type>();
```
Now we can access this controller through the `stream` property.
```dart
Stream stream = controller.stream;
```
## How To Subscribe A Stream
After getting access from the stream, you subscribe to the stream by calling a `listen()` method.
```dart
 stream.listen((value) {
  print("Value from controller: $value");
});
```
## How To Add Value To The Stream
We can add the stream by calling the `add()` method. Let’s add some value to the stream.
```dart
controller.add(3);
```

## How To Manage The Stream
To manage the stream, listen() method is used.

```dart
StreamSubscription<int> streamSubscription = stream.listen((value){
  print("Value from controller: $value");
});
```
## How To Cancel A Stream
```dart
streamSubscription.cancel();
```
## Method Used In Stream
### listen
### onError
### cancelOnError
### onDone

