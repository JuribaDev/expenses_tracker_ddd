import 'package:expenses_tracker_ddd/config/theme/color_scheme.dart';
import 'package:expenses_tracker_ddd/counter/view/counter_page.dart';
import 'package:expenses_tracker_ddd/l10n/l10n.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      themeMode: ThemeMode.dark,
      theme: ThemeData(colorScheme: lightColorScheme),
      darkTheme: ThemeData(colorScheme: darkColorScheme),
      home: const CounterPage(),
    );
  }
}
