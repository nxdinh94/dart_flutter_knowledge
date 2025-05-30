import 'dart:isolate';

void main() async {
  final receivePort = ReceivePort();

  await Isolate.spawn(sumNumbers, [receivePort.sendPort, List.generate(10000000, (i) => i + 1)]);

  final result = await receivePort.first;

  print('Tổng là: $result');
}

void sumNumbers(List<dynamic> args) {
  SendPort sendPort = args[0];
  List<int> numbers = args[1];

  int sum = numbers.reduce((a, b) => a + b);
  sendPort.send(sum);
}
