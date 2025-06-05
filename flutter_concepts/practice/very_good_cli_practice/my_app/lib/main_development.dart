import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/app/app.dart';
import 'package:my_app/bootstrap.dart';
import 'package:my_app/todo/todo.dart';

void main() {
  bootstrap(() {
      return BlocProvider(
        create: (context) => TodoBloc(),
        child: const App(),
      );
    }
  );
}
