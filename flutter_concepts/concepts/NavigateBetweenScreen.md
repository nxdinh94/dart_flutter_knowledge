# Some ways to navigate between screens
1. Using the Navigator
```dart

child: const Text('Open second screen'),
onPressed: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => const SecondScreen()),
  );
},
```
2. Using named routes
![NOTE]
> We don't recommend using named routes for most applications.

```dart
child: const Text('Open second screen'),
onPressed: () {
  Navigator.pushNamed(context, '/second');
},
```
3. Using the Router
- go_router package
4. Using Router and Navigator together
The Router and Navigator are designed to work together. You can navigate using the Router API through a declarative routing package, such as go_router, or by calling imperative methods such as push() and pop() on the Navigator.

# Navigate to a new screen and back
![NOTE]
>In Flutter, screens and pages are called routes. The remainder of this recipe refers to routes.

## Implement steps
1. Create routes
2. Navigate to the second route using `Navigator.push()`
 The push() method adds a Route to the stack of routes managed by the Navigator
```dart
// Within the `FirstRoute` widget:
onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SecondRoute()),
  );
}
```

3. Return to the first route using `Navigator.pop()`
The pop() method removes the current Route from the stack of routes managed by the Navigator.
```dart
// Within the SecondRoute widget
onPressed: () {
  Navigator.pop(context);
}
```

# Send data to a new screen
## Some ways to implement
1. Pass data through the argument of the widget
2. Navigate and pass the arguments to the detail screen
 Pass the arguments as part of the `RouteSettings`. The `DetailScreen` extracts these `arguments`.

 Send:
 ```dart
 onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailScreen(),
            // Pass the arguments as part of the RouteSettings. The
            // DetailScreen reads the arguments from these settings.
            settings: RouteSettings(arguments: todos[index]),
          ),
        );
      }
 ```

 Receive:
 ```dart
 Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)!.settings.arguments as Todo;

    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(title: Text(todo.title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(todo.description),
      ),
    );
  }
```

# Return data from a screen

1. Pass data the the pop() method of navigation
```dart
ElevatedButton(
  onPressed: () {
    // Close the screen and return "Yep!" as the result.
    Navigator.pop(context, 'Yep!');
  },
  child: const Text('Yep!'),
)
```
2. Receive data like below:
```dart
// A method that launches the SelectionScreen and awaits the result from
// Navigator.pop.
Future<void> _navigateAndDisplaySelection(BuildContext context) async {
  // Navigator.push returns a Future that completes after calling
  // Navigator.pop on the Selection Screen.
  final result = await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SelectionScreen()),
  );

  // When a BuildContext is used from a StatefulWidget, the mounted property
  // must be checked after an asynchronous gap.
  if (!context.mounted) return;

  // After the Selection Screen returns a result, hide any previous snackbars
  // and show the new result.
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text('$result')));
}
```