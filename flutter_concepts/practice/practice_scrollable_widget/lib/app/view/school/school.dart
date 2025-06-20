
import 'package:flutter/material.dart';

class School extends StatelessWidget {
  const School({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'School',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
