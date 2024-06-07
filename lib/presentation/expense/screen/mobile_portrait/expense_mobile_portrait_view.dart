// ignore_for_file: inference_failure_on_function_invocation, inference_failure_on_instance_creation

import 'package:expenses_tracker_ddd/presentation/expense/screen/widget/add_or_update_expense_widget.dart';
import 'package:expenses_tracker_ddd/presentation/expense/screen/widget/expenses_list.dart';
import 'package:expenses_tracker_ddd/presentation/expense/screen/widget/last_month_bar_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ExpenseMobilePortraitView extends HookWidget {
  const ExpenseMobilePortraitView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text('Expense Tracker'),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Theme.of(context).colorScheme.onSurface,
            onPressed: () => Navigator.of(context).push(
              ModalBottomSheetRoute(
                builder: (context) => AddOrUpdateExpenseWidget(),
                isScrollControlled: true,
              ),
            ),
            child: Icon(Icons.add, color: Theme.of(context).colorScheme.surface),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 10,
                ),
                SizedBox(height: 200, child: LastMonthExpensesBarChart()),
                const SizedBox(
                  height: 30,
                ),
                const Expanded(child: ExpensesList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
