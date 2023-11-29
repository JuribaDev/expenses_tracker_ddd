import 'package:expenses_tracker_ddd/app_initializer.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/domain/expense/expense.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/expense_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AddOrUpdateExpenseWidget extends HookWidget {
  AddOrUpdateExpenseWidget({this.expenseDto, super.key});

  final ExpenseDto? expenseDto;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bloc = sl<ExpenseBloc>();

    final titleController = useTextEditingController();
    final amountController = useTextEditingController();
    var now = DateTime.now();
    useEffect(() {
      if (expenseDto != null) {
        titleController.text = expenseDto!.title;
        amountController.text = expenseDto!.amount;
        now = expenseDto!.date;
      }
      return;
    });

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Text('Add New Expense'),
                const SizedBox(height: 10),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: titleController,
                  validator: validateTitleOnChange,
                  decoration: const InputDecoration(hintText: 'Title'),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  validator: validateAmountOnChange,
                  decoration: const InputDecoration(hintText: 'Amount'),
                  onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                ),
                const SizedBox(height: 150),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.onBackground,
                      foregroundColor: Theme.of(context).colorScheme.background,
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (expenseDto != null) {
                          bloc.add(
                            ExpensesEvent.updateExpense(
                              ExpenseDto(
                                id: expenseDto!.id,
                                title: titleController.text,
                                amount: amountController.text,
                                date: now,
                              ),
                            ),
                          );
                        } else {
                          bloc.add(
                            ExpensesEvent.addExpense(
                              ExpenseDto(
                                title: titleController.text,
                                amount: amountController.text,
                                date: now,
                              ),
                            ),
                          );
                        }
                        Navigator.pop(context);
                      }
                    },
                    child: const Text(
                      'Add new expense',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
