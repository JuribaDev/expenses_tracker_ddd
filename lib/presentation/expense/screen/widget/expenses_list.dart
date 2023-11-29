// ignore_for_file: inference_failure_on_function_invocation

import 'package:expenses_tracker_ddd/app_initializer.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/expense_bloc/expense_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/screen/widget/add_or_update_expense_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseBloc>(
      create: (context) => sl<ExpenseBloc>()..add(const ExpensesEvent.getExpenses()),
      child: BlocBuilder<ExpenseBloc, ExpensesState>(
        builder: (context, state) {
          return state.when(
            commonState: (commonState) => commonState.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (err) => Center(
                child: Text(err),
              ),
            ),
            expenseDeleted: (String message) {
              _showSnackBar(context, message);
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            expenseAdded: (String message) {
              _showSnackBar(context, message);
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            expenseUpdated: (String message) {
              _showSnackBar(context, message);
              sl<ExpenseBloc>().add(const ExpensesEvent.getExpenses());
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            expensesLoaded: (expenses) => expenses.isEmpty
                ? Center(
                    child: IconButton(
                      onPressed: () {
                        sl<ExpenseBloc>().add(const ExpensesEvent.getExpenses());
                      },
                      icon: const Icon(Icons.refresh),
                    ),
                  )
                : ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: Dismissible(
                          background: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.delete),
                            ],
                          ),
                          key: Key(expenses[index].id.toString()),
                          onDismissed: (direction) {
                            sl<ExpenseBloc>().add(ExpensesEvent.deleteExpense(expenses[index].id!));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: ListTile(
                              onTap: () => showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) =>
                                    AddOrUpdateExpenseWidget(expenseDto: expenses[index]),
                              ),
                              title: Text(expenses[index].title),
                              subtitle: Text(expenses[index].amount),
                              trailing: Text(DateFormat.yMMMd().format(expenses[index].date)),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: expenses.length,
                    separatorBuilder: (BuildContext context, int index) => const Divider(),
                  ),
          );
        },
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(seconds: 1),
        ),
      );
      sl<ExpenseBloc>().add(const ExpensesEvent.getExpenses());
    });
  }
}
