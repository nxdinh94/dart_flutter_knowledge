import '../lib/todo_manager.dart';

void main(List<String> arguments) async {
  final manager = TodoManager();
  await manager.loadFromFile();

  if (arguments.isEmpty) {
    print('Lệnh: add <title> | list | done <id>');
    return;
  }

  try {
    final command = arguments[0];

    switch (command) {
      case 'add':
        final title = arguments.sublist(1).join(' ');
        manager.add(title);
        break;
      case 'list':
        manager.list();
        break;
      case 'done':
        final id = int.parse(arguments[1]);
        manager.markDone(id);
        break;
      default:
        print('Lệnh không hợp lệ');
    }

      await manager.saveToFile();
  } catch (e) {
    print('Lỗi: $e');
  }
}
