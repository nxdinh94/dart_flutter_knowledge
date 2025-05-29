//dart run filtered_stream.dart

Stream<int>timedCounter(Duration timeInterval, [int? maxCount])async*{
  int i = 0;
  while(true){
    await Future.delayed(timeInterval);
    i++;
    await Future.delayed(timeInterval);
    yield i;
    if(i == maxCount) break;
  }
}
Stream<int> filterStream (Stream<int> input){
  return input.where((v) => v%2 == 0);
}
void main()async{
  await for(final i in filterStream(timedCounter(Duration(seconds: 1), 10))){
    print(i);
  }
}