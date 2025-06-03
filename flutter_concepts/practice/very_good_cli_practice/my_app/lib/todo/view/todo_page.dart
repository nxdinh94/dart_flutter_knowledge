import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:my_app/todo/model/todo_model.dart';
import 'package:my_app/todo/todo.dart';
import 'package:my_app/todo/view/create_todo_page.dart';
import 'package:my_app/todo/view/edit_todo_page.dart';
class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  void navigateToCreateTodoPage() {
    Navigator.push(
      context, MaterialPageRoute<dynamic>(builder: (context) => const CreateTodoPage(),));
  }
  void deleteTodo(String id) {
    context.read<TodoBloc>().add(DeleteTodoTask(taskId: id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        actions: [
          TextButton(
            onPressed: navigateToCreateTodoPage,
            child: const Text('Add', style: TextStyle(color: Colors.black),)
          )
        ],
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (BuildContext context, state) {
          final todoList = state.todoList;
          return Container(
            padding: const EdgeInsets.only(left: 24),
            child: SingleChildScrollView(
              child: Column(
                children: todoList.map((e) {
                    return Slidable(
                      key: ValueKey(e.id.toString()),
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        dismissible: DismissiblePane(onDismissed: () {
                            deleteTodo(e.id.toString());
                          }
                        ),

                        children: [
                          // A SlidableAction can have an icon and/or a label.
                          SlidableAction(
                            onPressed: (context) {
                              deleteTodo(e.id.toString());
                            },
                            backgroundColor: Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                          SlidableAction(
                            onPressed: (context) {
                            },
                            backgroundColor: Color(0xFF21B7CA),
                            foregroundColor: Colors.white,
                            icon: Icons.share,
                            label: 'Share',
                          ),
                        ],
                      ),
                      child: TodoItem(todo: e)
                    );
                  }
                ).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  const TodoItem({required this.todo, super.key});
  final Todo todo;

  @override
  Widget build(BuildContext context) {

    final id = todo.id.toString();
    final title = todo.title;
    final completed = todo.completed;

    void changeCompletedTask(String taskId, {bool isCompleted = true}) {
      context.read<TodoBloc>()
        .add(MarkAsCompleteTask(taskId: taskId, isCompleted: isCompleted));
    }
    void navigateToEditTodoPage(String id, String title) {
      Navigator.push(
        context, MaterialPageRoute<dynamic>(
          builder: (context) => const EditTodoPage(),
          settings: RouteSettings(
            arguments: {'id': id, 'title': title},
          ),
        )
      );
    }

    return Row(
      children: [
        Expanded(
          flex: 8,
          child: GestureDetector(
            onTap: () {
              navigateToEditTodoPage(id, title);
            },
            child: Text(title),
          ),
        ),
        Expanded(
          flex: 2,
          child: Checkbox(value: completed, onChanged: (value) {
              changeCompletedTask(id, isCompleted: value!);
            },),
        ),
      ],
    );;
  }
}


