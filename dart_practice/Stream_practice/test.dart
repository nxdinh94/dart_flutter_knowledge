import 'dart:async';


Stream<int> streamController(Duration duration, [int? maxCount]){
  late StreamController<int> _controller;
  Timer ? timer;
  int _counter = 0;
  void tick(_){
    _counter++;
    print(_counter);
    _controller.sink.add(_counter);
    if(_counter == maxCount){
      timer?.cancel();
      _controller.close();
    }
  }
  void _onStart(){
    timer = Timer.periodic(duration, tick);
  }
  void _onStop(){
    timer?.cancel();
  }


  _controller = StreamController(
    onResume: _onStart,
    onPause: _onStop,
    onCancel: _onStop,
    onListen: _onStart
  );
  return _controller.stream;
}

void listenWithPause(){
 Stream<int> stream = streamController(Duration(seconds: 1), 10);
 late StreamSubscription<int> sub;
 sub = stream.listen((v){
   if(v == 6){
     sub.pause(Future.delayed(Duration(seconds: 5)));
   }
 });
}

void main(){
  listenWithPause();
}
