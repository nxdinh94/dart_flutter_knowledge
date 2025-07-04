
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class School extends StatelessWidget {
  const School({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          context.push('/schoolHome');
        },
        child: Text(
          'Let browse our classes',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
