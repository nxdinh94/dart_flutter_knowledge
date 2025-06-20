
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class ErrorRoute extends StatelessWidget {
  const ErrorRoute({
    required this.state, super.key,
  });

  final GoRouterState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Error: ${state.error}',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}