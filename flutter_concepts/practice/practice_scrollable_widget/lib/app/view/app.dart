import 'package:flutter/material.dart';
import 'package:practice_scrollable_widget/l10n/arb/app_localizations.dart';
import 'package:practice_scrollable_widget/menu_food/menu_food.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const MenuFoodPage(),
    );
  }
}
