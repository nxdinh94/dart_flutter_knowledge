//dart run create_stream_from_scratch.dart

Stream<int>timedCounter(Duration timeInterval, [int? maxCount])async*{
  int i = 0;
  while(true){
    await Future.delayed(timeInterval);
    print('delay first time');
    i++;
    await Future.delayed(timeInterval);
    print('delay second time');
    yield i;
    if(i == maxCount) break;
  }
}

void main()async{
  await for(final value in timedCounter(Duration(seconds: 1), 10)){
    print(value);
  }
}