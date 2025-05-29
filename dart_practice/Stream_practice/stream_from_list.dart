// dart run stream_from_list.dart


void main()async{
  Stream<int> myStream = Stream.fromIterable(List.generate(5, (value) => value));
  await for(final v in myStream){
    print(v);
  }
  // run with listen() from Stream API
  myStream.listen((v){
    print(v);
  });
}