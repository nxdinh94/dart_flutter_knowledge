import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/todo/bloc/todo_bloc.dart';
import 'package:my_app/todo/bloc/todo_events.dart';
class EditTodoPage extends StatelessWidget {
  const EditTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final controller = TextEditingController(text: todo['title'] as String);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Todo Title',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final newTitle = controller.text.trim();
                context.read<TodoBloc>().add(
                    UpdateTodoTask(newTitle: newTitle, taskId: todo['id'] as String)
                );
              },
              child: const Text('Update Todo'),
            ),
          ],
        ),
      ),
    );
  }
}
