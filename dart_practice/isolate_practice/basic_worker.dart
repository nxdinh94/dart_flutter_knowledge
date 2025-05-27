import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

void main() async {
  final worker = Worker();
  await worker.spawn();
  await worker.parseJson('{"key":"value"}');
}

class Worker {
  late SendPort _sendPort;
  final Completer<void> _isolateReady = Completer.sync();

  Future<void> spawn() async {
    final receivePort = ReceivePort(); // This allow the main isolate to receive messages from the spawned isolate.
    receivePort.listen(_handleResponsesFromIsolate); // Handle messages will send back from the worker isolate
    // _startRemoteIsolate is the function that will run in the spawned isolate, pass the send port of the main isolate to this function.
    await Isolate.spawn(_startRemoteIsolate, receivePort.sendPort);
  }

  // This is like the main method of the spawned isolate.
  static void _startRemoteIsolate(SendPort port) {
    final receivePort = ReceivePort(); // This will receive future messages from the main isolate.
    port.send(receivePort.sendPort); // Send the send port of the receive port back to the main isolate.

    // Listen for messages from the main isolate.
    receivePort.listen((dynamic message) async {
      if (message is String) {
        final transformed = jsonDecode(message);
        // Send result back to the main isolate.
        port.send(transformed);
      }
    });
  }
  //Tell the main isolate how to handle messages from the spawned isolate
  void _handleResponsesFromIsolate(dynamic message) {
    if (message is SendPort) {
      // assign that port to the class's _sendPort property so it can be used to send messages later.
      _sendPort = message;
      _isolateReady.complete();
    } else if (message is Map<String, dynamic>) {
      print(message);
    }
  }



  Future<void> parseJson(String message) async {
    // This ensures that no message can be sent to the worker isolate until it is spawned and has sent its SendPort back to the main isolate.
    await _isolateReady.future;
    _sendPort.send(message);
  }
}