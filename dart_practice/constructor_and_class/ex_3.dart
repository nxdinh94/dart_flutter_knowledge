
/*Bài 3: Singleton với factory
Tạo class Logger với factory constructor để đảm bảo chỉ tạo một instance duy nhất:

Dùng biến tĩnh static Logger? _instance.

Dùng factory để return instance đó.*/

class Logger{
  static Logger ? _instance;
  late String name;
  Logger._internal();

  static Logger get instance => _instance ??= Logger._internal();

  factory Logger(String name){
    _instance ??= Logger._internal();
    return _instance!._initial(name);
  }

  Logger _initial (String name){
    this.name = name;
    return this;
  }
}


void main(){
  final log1 = Logger('no name');
  print(log1.name);
  print(log1 == Logger('name 3'));
}