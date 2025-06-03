import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/todo/bloc/todo_bloc.dart';
import 'package:my_app/todo/bloc/todo_events.dart';
class CreateTodoPage extends StatelessWidget {
  const CreateTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Todo Title',
              ),
              controller: titleController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final title = titleController.text.trim();
                context.read<TodoBloc>().add(CreateTodoTask(title: title));
                titleController.clear();
              },
              child: const Text('Create Todo'),
            ),
          ],
        ),
      ),
    );
  }
}
