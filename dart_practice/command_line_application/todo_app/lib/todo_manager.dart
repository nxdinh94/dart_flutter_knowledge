import 'dart:io';
import 'dart:convert';

import 'todo.dart';

class TodoManager {
  List<Todo> todos = [];

  Future<void> loadFromFile() async {
    final file = File('todos.json');
    if (await file.exists()) {
      final content = await file.readAsString();
      final data = jsonDecode(content) as List;
      todos = data.map((e) => Todo.fromJson(e)).toList();
    }
  }

  Future<void> saveToFile() async {
    final file = File('todos.json');
    final content = jsonEncode(todos.map((e) => e.toJson()).toList());
    await file.writeAsString(content);
  }

  void add(String title) {
    final id = todos.isEmpty ? 1 : todos.last.id + 1;
    todos.add(Todo(id: id, title: title));
    print('Đã thêm: $title');
  }

  void list() {
    if (todos.isEmpty) {
      print('Danh sách trống.');
      return;
    }
    for (var todo in todos) {
      print(todo);
    }
  }

  void markDone(int id) {
    final todo = todos.firstWhere((e) => e.id == id, orElse: () => throw Exception('Không tìm thấy công việc'));
    todo.status = Status.done;
    print('Đã đánh dấu hoàn thành: ${todo.title}');
  }
}
