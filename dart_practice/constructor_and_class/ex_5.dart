/*Factory parse enum từ int
Tạo enum Level { easy, medium, hard }

Viết class Game có Level difficulty.

Viết factory constructor Game.fromInt(int value):

0 → easy, 1 → medium, 2 → hard

*/
enum Level{easy, medium, hard}

class Game{
  final Level level;
  Game({required this.level});
  factory Game.fromInt(int level){
    if(level <0 || level >= Level.values.length) throw Exception('Out of index');
    return Game(level: Level.values[level]);
  }
}

void main() {
  Game easy = Game.fromInt(1);
  print(easy.level);
}