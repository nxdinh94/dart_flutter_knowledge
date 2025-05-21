## Concept
- Each isolate has its memory heap, ensuring that no isolate's state is accessible from any other isolate.
- The isolates and threads are different than each other as in threads memory are shared whereas in isolates it is not. Moreover isolates talk to each other via passing messages.
## Creating an Isolate
To create an isolate, we make use of the `.spawn()` method in Dart.
```dart
Isolate isolate_name = await Isolate.spawn( parameter );
```
## Destroying an Isolate
```dart
isolate_name.kill( parameters );
```

## Example
```dart
import 'dart:async';
import 'dart:io';
import 'dart:isolate';

// Creating geek isolate
Isolate? geek;

Future<void> start_geek_process() async {
    
    // port for isolate to receive messages.
    ReceivePort geekReceive = ReceivePort();
    
    // Starting an isolate
    geek = await Isolate.spawn(gfg, geekReceive.sendPort);
}

void gfg(SendPort sendPort) {
    int counter = 0;
    
    // Printing Output message after every 2 sec.
    Timer.periodic(const Duration(seconds: 2), (Timer t) {
        
        // Increasing the counter
        counter++;
        
        //Printing the output message
        stdout.writeln('Welcome to GeeksForGeeks $counter');
    });
}

void stop_geek_process() {
    
    // Checking the isolate with null
    if (geek != null) {
        stdout.writeln('--------------Stopping Geek Isolate--------------');
        
        // Killing the isolate
        geek!.kill(priority: Isolate.immediate);
        
        // Setting the isolate to null
        geek = null;
    }
}

// Main Function
void main() async {
    stdout.writeln('--------------Starting Geek Isolate--------------');
    
    // Starting the isolate with start_geek_process
    await start_geek_process();
    stdout.writeln('Press enter key to quit');
    
    // Whenever enter is hit the program is stopped
    await stdin.first;
    
    // Calling the stop_geek_process
    stop_geek_process();
    
    // Printing the goodbye message
    stdout.writeln('GoodBye Geek!');
    
    // Exiting the program.
    exit(0);
}
```
### Output
```
--------------Starting Geek Isolate--------------
Press enter key to quit
Welcome to GeeksForGeeks 1
Welcome to GeeksForGeeks 2
Welcome to GeeksForGeeks 3
Welcome to GeeksForGeeks 4
Welcome to GeeksForGeeks 5
Welcome to GeeksForGeeks 6
Welcome to GeeksForGeeks 7

--------------Stopping Geek Isolate--------------
GoodBye Geek!
```

## Implementing a simple worker isolate
These examples implement a main isolate that spawns a simple worker isolate. `Isolate.run()` simplifies the steps behind setting up and managing worker isolates:
1. Spawns (starts and creates) an isolate.
2. Runs a function on the spawned isolate.
3. Captures the result.
4. Returns the result to the main isolate.
5. Terminates the isolate once work is complete.
6. Checks, captures, and throws exceptions and errors back to the main isolate.

### Running an existing method in a new isolate
1. Call `run()` to spawn a new isolate (a `background worker`), directly in the `main isolate` while `main()` waits for the result:
```dart
const String filename = 'with_keys.json';

void main() async {
  // Read some data.
  final jsonData = await Isolate.run(_readAndParseJson);

  // Use that data.
  print('Number of JSON keys: ${jsonData.length}');
}
```
2. Pass the worker isolate the function you want it to execute as its first argument. In this example, it's the existing function `_readAndParseJson()`:
```dart
Future<Map<String, dynamic>> _readAndParseJson() async {
  final fileData = await File(filename).readAsString();
  final jsonData = jsonDecode(fileData) as Map<String, dynamic>;
  return jsonData;
}
```
3. `Isolate.run()` takes the result `_readAndParseJson()` returns and sends the value back to the main isolate, shutting down the worker isolate.
4. The worker isolate *transfers* the memory holding the result to the main isolate. It **does not copy the data**. The worker isolate performs a verification pass to ensure the objects are allowed to be transferred.

The result of `Isolate.run()` is always a **Future**, because code in the main isolate continues to run.

## Sending multiple messages between isolates with ports
### `ReceivePort` and `SendPort`
Setting up long-lived communication between isolates requires two classes (in addition to `Isolate`): `ReceivePort` and `SendPort`. These ports are the only way isolates can communicate with each other.

>[NOTE]
>A `SendPort` object is associated with exactly one `ReceivePort`, but a single `ReceivePort` can have many `SendPorts`. When you create a `ReceivePort`, it creates a `SendPort` for itself. You can create additional `SendPorts` that can send messages to an existing `ReceivePort`.

### Setting up ports


