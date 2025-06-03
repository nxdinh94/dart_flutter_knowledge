import 'package:flutter_bloc/flutter_bloc.dart';

sealed class TodoEvents {}

final class CreateTodoTask extends TodoEvents {
  CreateTodoTask({required this.title});
  final String title;
}
final class UpdateTodoTask extends TodoEvents {
  UpdateTodoTask({required this.taskId, required this.newTitle});
  final String taskId;
  final String newTitle;
}

final class MarkAsCompleteTask extends TodoEvents {
  MarkAsCompleteTask({required this.taskId, required this.isCompleted});
  final String taskId;
  final bool isCompleted;
}

final class DeleteTodoTask extends TodoEvents {

    DeleteTodoTask({required this.taskId});
  final String taskId;
}
