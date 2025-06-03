import 'package:flutter/material.dart';
import 'package:my_app/l10n/arb/app_localizations.dart';
import 'package:my_app/todo/view/todo_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          toolbarHeight: 40,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const TodoPage(),
    );
  }
}
