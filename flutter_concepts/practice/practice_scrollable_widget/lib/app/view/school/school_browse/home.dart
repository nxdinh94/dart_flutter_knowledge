import 'package:flutter/material.dart';
import 'package:practice_scrollable_widget/core/shared_widgets/leading_appbar.dart';
class SchoolHome extends StatelessWidget {
  const SchoolHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('School Home', style: Theme.of(context).textTheme.headlineSmall),
        leading: const LeadingAppbar(),
      ),
      body: Center(
        child: Text(
          'School Home',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
