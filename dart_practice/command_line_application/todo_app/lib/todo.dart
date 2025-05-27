enum Status { pending, done }

class Todo {
  final int id;
  final String title;
  Status status;

  Todo({required this.id, required this.title, this.status = Status.pending});

  @override
  String toString() {
    return '[$id] $title - ${status.name}';
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'status': status.name,
    };
  }

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      title: json['title'],
      status: Status.values.firstWhere((e) => e.name == json['status']),
    );
  }
}
