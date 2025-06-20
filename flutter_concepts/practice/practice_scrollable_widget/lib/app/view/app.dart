import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_scrollable_widget/l10n/arb/app_localizations.dart';

class App extends StatelessWidget {
  const App({required this.router, super.key});
  final GoRouter router;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      builder: (context, router) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: router,
          ),
        );
      },
    );
  }
}
