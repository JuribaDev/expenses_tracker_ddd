import 'package:expenses_tracker_ddd/config/theme/color_scheme.dart';
import 'package:expenses_tracker_ddd/presentation/expense/screen/expense_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(colorScheme: lightColorScheme),
      darkTheme: ThemeData(colorScheme: darkColorScheme),
      home: const ExpenseScreen(),
    );
  }
}
