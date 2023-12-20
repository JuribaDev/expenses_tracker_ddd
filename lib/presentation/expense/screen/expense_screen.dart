import 'package:expenses_tracker_ddd/app_initializer.dart';
import 'package:expenses_tracker_ddd/core/widgets/responsive_layout_wrapper.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/expense_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/screen/mobile_portrait/expense_mobile_portrait_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ExpenseBloc>()..add(const ExpensesEvent.getExpenses()),
      child: const ResponsiveLayoutWrapper(
        mobilePortraitLayout: ExpenseMobilePortraitView(),
        mobileLandscapeLayout: ExpenseMobilePortraitView(),
        tabletPortraitLayout: ExpenseMobilePortraitView(),
        tabletLandscapeLayout: ExpenseMobilePortraitView(),
        desktopLayout: ExpenseMobilePortraitView(),
      ),
    );
  }
}
