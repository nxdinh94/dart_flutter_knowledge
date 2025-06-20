
import 'package:flutter/material.dart';
class FlightClasses extends StatelessWidget {
  const FlightClasses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Flight Classes',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
