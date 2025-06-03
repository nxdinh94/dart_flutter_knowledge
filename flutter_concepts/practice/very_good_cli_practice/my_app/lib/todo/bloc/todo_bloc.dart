import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/todo/bloc/todo_events.dart';
import 'package:my_app/todo/bloc/todo_states.dart';
import 'package:my_app/todo/model/todo_model.dart';

class TodoBloc extends Bloc<TodoEvents, TodoState> {

  TodoBloc() : super( const TodoState.initial()) {
    on<CreateTodoTask>(_onCreateTodoTask);
    on<UpdateTodoTask>(_onUpdateTodoTask);
    on<DeleteTodoTask>(_onDeleteTodoTask);
    on<MarkAsCompleteTask>(_onMarkAsCompleteTask);
  }

  void _onCreateTodoTask(CreateTodoTask event, Emitter<TodoState> emit) {
    final todoList = List<Todo>.from(state.todoList);
    todoList.add(Todo(id: todoList.length + 1, title: event.title, completed: false));
    emit(state.copyWith(todoList: todoList));
  }
  void _onUpdateTodoTask(UpdateTodoTask event, Emitter<TodoState> emit) {
    final todoList = state.todoList.map((e) {
      if (e.id.toString() == event.taskId) {
        return e.copyWith(title: event.newTitle);
      } else {
        return e;
      }
    }).toList();
    emit(state.copyWith(todoList: todoList));
  }
  void _onDeleteTodoTask(DeleteTodoTask event, Emitter<TodoState> emit) {
    final newTodoList = <Todo>[];
    state.todoList.map((e){
      if(event.taskId == e.id.toString()){
        newTodoList.add(e);
      }
    }).toList();
    emit(state.copyWith(todoList: newTodoList));
  }
  void _onMarkAsCompleteTask(MarkAsCompleteTask event, Emitter<TodoState> emit) {
    final todoList = state.todoList.map((e){
      if(e.id.toString() == event.taskId){
        return e.copyWith(completed: event.isCompleted);
      } else {
        return e;
      }
    }).toList();
    emit(state.copyWith(todoList: todoList));
  }
}
