import 'package:expenses_tracker_ddd/core/widgets/responsive_layout_wrapper.dart';
import 'package:expenses_tracker_ddd/presentation/expense/screen/mobile_portrait/expense_mobile_portrait_view.dart';
import 'package:flutter/material.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWrapper(
      mobilePortraitLayout: const ExpenseMobilePortraitView(),
      mobileLandscapeLayout: _placeholder('Tablet Portrait'),
      tabletPortraitLayout: _placeholder('Tablet Portrait'),
      tabletLandscapeLayout: _placeholder('Tablet Landscape'),
      desktopLayout: _placeholder('Desktop'),
    );
  }

  Widget _placeholder(String text) => Scaffold(
        body: Center(
          child: Text(text),
        ),
      );
}
