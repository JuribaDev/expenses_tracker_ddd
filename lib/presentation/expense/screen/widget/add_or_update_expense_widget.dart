import 'package:expenses_tracker_ddd/app_initializer.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/expense_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/expense_validation_bloc/expense_validation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AddOrUpdateExpenseWidget extends HookWidget {
  AddOrUpdateExpenseWidget({this.expenseDto, super.key});

  final ExpenseDto? expenseDto;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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

    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: DraggableScrollableSheet(
        expand: false,
        builder: (context, scrollController) => SingleChildScrollView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 4,
              left: 16,
              right: 16,
            ),
            child: BlocProvider<ExpenseValidationBloc>(
              create: (context) => sl<ExpenseValidationBloc>(),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formKey,
                child: Column(
                  children: <Widget>[
                    const Icon(
                      Icons.maximize,
                      size: 20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      expenseDto != null ? 'Update Expense' : 'Add New Expense',
                    ),
                    const SizedBox(height: 10),
                    BlocBuilder<ExpenseValidationBloc, ExpenseValidationState>(
                      builder: (context, state) {
                        return TextFormField(
                          autofocus: true,
                          controller: titleController,
                          onChanged: (input) {
                            sl<ExpenseValidationBloc>().add(ValidateInputEvent(input: input));
                          },
                          textInputAction: TextInputAction.next,
                          validator: (input) {
                            if (state is ExpenseValidationError) {
                              return state.message;
                            }
                            return null;
                          },
                          decoration: const InputDecoration(hintText: 'Title'),
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: amountController,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      // validator: validateAmountOnChange,
                      decoration: const InputDecoration(hintText: 'Amount'),
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).unfocus();
                        addOrUpdate(context, titleController.text, amountController.text, now);
                      },
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.onBackground,
                          foregroundColor: Theme.of(context).colorScheme.background,
                        ),
                        onPressed: () => addOrUpdate(context, titleController.text, amountController.text, now),
                        child: const Text(
                          'Add new expense',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    // const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void addOrUpdate(BuildContext context, String title, String amount, DateTime createdAt) {
    {
      if (formKey.currentState!.validate()) {
        if (expenseDto != null) {
          sl<ExpenseBloc>().add(
            ExpensesEvent.updateExpense(
              ExpenseDto(
                id: expenseDto!.id,
                title: title,
                amount: amount,
                date: DateTime.now(),
              ),
            ),
          );
        } else {
          sl<ExpenseBloc>().add(
            ExpensesEvent.addExpense(
              ExpenseDto(
                title: title,
                amount: amount,
                date: createdAt,
              ),
            ),
          );
        }
        FocusScope.of(context).unfocus();

        Navigator.pop(context);
      }
    }
  }
}
