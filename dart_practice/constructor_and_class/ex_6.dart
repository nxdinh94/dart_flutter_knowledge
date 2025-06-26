
/*Immutability + copyWith + factory
Viết class UserProfile:

Các field: id, name, email (đều final)

Constructor mặc định, một factory fromJson, một method copyWith(...)

Dùng const và tạo object bất biến (immutable).*/

class UserProfile{
  final String id;
  final String name;
  final String email;

  const UserProfile({required this.id, required this.name, required this.email});
  factory UserProfile.fromJson(dynamic json){
    return UserProfile(id: json['id'], name: json['name'], email: json['email']);
  }
  UserProfile copyWith({String? id, String? name, String? email}){
    return UserProfile(
      id: id ?? this.id, name: name??  this.name, email:email?? this.email
    );
  }

  @override
  String toString() {
    return "$id - $name - $email";
  }
}
void main() {
  const user = UserProfile(id: '001', name: 'Alice', email: 'alice@example.com');

  print(user); // 👉 UserProfile(id: 001, name: Alice, email: alice@example.com)

  final updatedUser = user.copyWith(name: 'Alice Smith');
  print(updatedUser); // 👉 UserProfile(id: 001, name: Alice Smith, email: alice@example.com)

  final userFromJson = UserProfile.fromJson({
    'id': '002',
    'name': 'Bob',
    'email': 'bob@example.com',
  });
  print(userFromJson);
}