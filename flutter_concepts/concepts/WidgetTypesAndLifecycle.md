# Type of widgets 
## Stateful widgets
 A Stateful widget maintains data and responds to whatever the data does inside the application. It is a mutable widget, so it is drawn multiple times in its lifetime.
### The life cycle of the StatefulWidget Diagram.



## Stateless widgets
Stateless Widgets are those widgets whose state once created cannot be changed, it becomes immutable like on variables, buttons, icons, etc., or any state that cannot be changed on the app to retrieve data. Returns a widget by overwriting the build method. We use it when the UI relies on the information inside the object itself.

# Widgets life cycle
`createState -> initState() -> didChangeDependencies() -> build()-> didUpdateWidget() -> setState() -> deactivate() -> dispose()`
- `initState()`: Flutter’s initState() method is the first method that is used while creating a stateful class, here we can initialize variables, data, properties, etc. for any widget.
- `createState()`: When we create a stateful widget, our framework calls a createState() method and it must be overridden.
- `build()`: The build method is used each time the widget is rebuilt. This can happen either after calling initState, didChangeDependencies, didUpdateWidget, or when the state is changed via a call to setState
- `didChangeDependencies()`: This method is called immediately after initState and when dependency of the State object changes via InheritedWidget.
- `didUpdateWidget()`: This method is called whenever the widget configuration changes. A typical case is when a parent passes some variable to the children() widget via the constructor.
- `deactivate()`: It is used when the state is removed from the tree but before the current frame change can be re-inserted into another part of the tree
- `dispose()`: We use this method when we remove permanently like should release resource created by an object like stop animation

# setState mechanism
- Notify the framework that one or more internal state of the widget have changed
- Calling setState notifies the framework that the internal state of this object has changed in a way that might impact the user interface in this subtree, which causes the framework to schedule a build for this State object.
- If you just change the state directly without calling setState, the framework might not schedule a build and the user interface for this subtree might not be updated to reflect the new state.

![NOTE]
> Don't do any computation in `setState()`
Example
```dart
Future<void> _incrementCounter() async {
  setState(() {
    _counter++;
  });
  Directory directory = await getApplicationDocumentsDirectory(); // from path_provider package
  final String dirName = directory.path;
  await File('$dirName/counter.txt').writeAsString('$_counter');
}

```



