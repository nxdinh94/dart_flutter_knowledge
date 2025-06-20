// create somple screen for business
import 'package:flutter/material.dart';

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Business',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}