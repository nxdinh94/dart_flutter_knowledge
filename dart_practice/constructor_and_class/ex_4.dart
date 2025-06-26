/*Factory constructor caching theo key
Tạo class UserSession với field userId.

Sử dụng factory constructor để:

Nếu đã tạo UserSession cho userId nào rồi → trả lại object cũ.

Nếu chưa → tạo mới và lưu cache.

*/
class UserSession{
  final int userId;

  static Map<int, UserSession> _cache = {};
  UserSession._internal(this.userId);
  factory UserSession(int userId){
    return _cache.putIfAbsent(userId, () => UserSession._internal(userId));
  }

}

void main(){
  var session1 = UserSession(1);
  var session2 = UserSession(1);
  var session3 = UserSession(3);

  print(session1 == session2);
  print(session1 == session3);

}