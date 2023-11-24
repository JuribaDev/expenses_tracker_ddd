import 'package:expenses_tracker_ddd/counter/view/counter_page.dart';
import 'package:expenses_tracker_ddd/l10n/l10n.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: CounterPage(),
    );
  }
}
