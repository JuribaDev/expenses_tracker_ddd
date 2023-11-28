import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expenses_tracker_ddd/application/expense/add_expense_use_case.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_expense_bloc.freezed.dart';
part 'add_expense_event.dart';
part 'add_expense_state.dart';

class AddExpenseBloc extends Bloc<AddExpenseEvent, AddExpenseState> {
  AddExpenseBloc(this._addExpenseUseCase)
      : super(const AddExpenseState.commonState(commonState: CommonState.initial())) {
    on<AddExpenseEvent>(_onAddExpenseEvent);
  }

  final AddExpenseUseCase _addExpenseUseCase;

  Future<void> _onAddExpenseEvent(AddExpenseEvent event, Emitter<AddExpenseState> emit) async {
    emit(const AddExpenseState.commonState(commonState: CommonState.loading()));
    final result = await _addExpenseUseCase(
      ExpenseDto(
        id: event.expenseDto.id,
        title: event.expenseDto.title,
        amount: event.expenseDto.amount,
        date: event.expenseDto.date,
      ),
    );
    result.fold(
      (failure) => emit(AddExpenseState.commonState(commonState: CommonState.error(errorMessage: failure.message))),
      (message) => emit(AddExpenseState.expenseAdded(message)),
    );
  }
}
