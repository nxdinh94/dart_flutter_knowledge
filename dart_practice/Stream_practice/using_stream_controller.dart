// NOTE: This implementation is FLAWED!
// It starts before it has subscribers, and it doesn't implement pause.
import 'dart:async';

Stream<int> timedCounter(Duration interval, [int? maxCount]) {
  var controller = StreamController<int>();
  int counter = 0;
  void tick(Timer timer) {
    counter++;
    controller.add(counter); // Ask stream to send counter values as event.
    if (maxCount != null && counter >= maxCount) {
      timer.cancel();
      controller.close(); // Ask stream to shut down and tell listeners.
    }
  }

  Timer.periodic(interval, tick); // BAD: Starts before it has subscribers.
  return controller.stream;
}
Stream<int> timedCounterAdvanced(Duration interval, [int? maxCount]) {
  late StreamController<int> controller;
  Timer? timer;
  int counter = 0;

  void tick(_) {
    counter++;
    controller.add(counter); // Ask stream to send counter values as event.
    if (counter == maxCount) {
      timer?.cancel();
      controller.close(); // Ask stream to shut down and tell listeners.
    }
  }

  void startTimer() {
    timer = Timer.periodic(interval, tick);
  }

  void stopTimer() {
    timer?.cancel();
    timer = null;
  }

  controller = StreamController<int>(
    onListen: startTimer,
    onPause: stopTimer,
    onResume: startTimer,
    onCancel: stopTimer,
  );

  return controller.stream;
}
void listenWithPauseAdvanced() {
  var counterStream = timedCounterAdvanced(const Duration(seconds: 1), 15);
  late StreamSubscription<int> subscription;

  subscription = counterStream.listen((int counter) {
    print(counter); // Print an integer every second.
    if (counter == 5) {
      // After 5 ticks, pause for five seconds, then resume.
      subscription.pause(Future.delayed(const Duration(seconds: 5)));
    }
  });
}
void listenAfterDelay() async {
  var counterStream = timedCounter(const Duration(seconds: 1), 15);
  await Future.delayed(const Duration(seconds: 5));

  // After 5 seconds, add a listener.
  await for (final n in counterStream) {
    print(n); // Print an integer every second, 15 times.
  }
}
void listenWithPause() {
  var counterStream = timedCounter(const Duration(seconds: 1), 15);
  late StreamSubscription<int> subscription;

  subscription = counterStream.listen((int counter) {
    print(counter); // Print an integer every second.
    if (counter == 5) {
      // After 5 ticks, pause for five seconds, then resume.
      subscription.pause(Future.delayed(const Duration(seconds: 5)));
    }
  });
}
void main()async{
  // listenAfterDelay();
  listenWithPauseAdvanced();
}
