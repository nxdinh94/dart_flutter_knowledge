import 'package:equatable/equatable.dart';
import 'package:my_app/todo/model/todo_model.dart';

class TodoState extends Equatable {
  const TodoState({required this.todoList});

  const TodoState.initial()
      : todoList = const [
    Todo(id: 1, title: 'Buy groceries', completed: false),
    Todo(id: 2, title: 'Walk the dog', completed: false),
    Todo(id: 3, title: 'Read a book', completed: true),
  ];

  final List<Todo> todoList;

  TodoState copyWith({List<Todo>? todoList}) {
    return TodoState(todoList: todoList ?? this.todoList);
  }

  @override
  List<Object?> get props => [todoList];
}
