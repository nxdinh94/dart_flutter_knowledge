
import 'package:flutter/material.dart';
class Classes extends StatelessWidget {
  const Classes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classes', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Center(
        child: Text(
          'Classes',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
