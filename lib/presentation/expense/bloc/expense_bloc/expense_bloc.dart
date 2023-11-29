import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/application/expense/expense_use_cases.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_bloc.freezed.dart';
part 'expense_event.dart';
part 'expense_state.dart';

class ExpenseBloc extends Bloc<ExpensesEvent, ExpensesState> {
  ExpenseBloc(
    this._getExpensesUseCase,
    this._addExpensesUseCase,
    this._deleteExpensesUseCase,
    this._updateExpenseUseCase,
  ) : super(const ExpensesState.commonState(commonState: CommonState.initial())) {
    on<ExpensesEvent>(_onExpensesEvent);
  }

  final GetExpensesUseCase _getExpensesUseCase;
  final AddExpenseUseCase _addExpensesUseCase;
  final DeleteExpenseUseCase _deleteExpensesUseCase;
  final UpdateExpenseUseCase _updateExpenseUseCase;

  Future<void> _onExpensesEvent(ExpensesEvent event, Emitter<ExpensesState> emit) async {
    emit(const ExpensesState.commonState(commonState: CommonState.loading()));
    await event.when(
      getExpenses: () async => _getExpenses(emit),
      addExpense: (expenseDto) async => _addExpense(emit, expenseDto),
      deleteExpense: (id) async => _deleteExpense(emit, id),
      updateExpense: (expenseDto) async => _updateExpense(emit, expenseDto),
    );
  }

  Future<void> _getExpenses(Emitter<ExpensesState> emit) async {
    final result = await _getExpensesUseCase(null);
    result.fold(
      (failure) {
        emit(ExpensesState.commonState(commonState: CommonState.error(errorMessage: failure.message)));
      },
      (expenses) => emit(ExpensesState.expensesLoaded(expenses)),
    );
  }

  Future<void> _addExpense(Emitter<ExpensesState> emit, ExpenseDto expenseDto) async {
    final result = await _addExpensesUseCase(expenseDto);
    result.fold(
      (failure) {
        emit(ExpensesState.commonState(commonState: CommonState.error(errorMessage: failure.message)));
      },
      (message) => emit(ExpensesState.expenseAdded(message)),
    );
  }

  Future<void> _deleteExpense(Emitter<ExpensesState> emit, int id) async {
    final result = await _deleteExpensesUseCase(id);
    result.fold(
      (failure) {
        emit(ExpensesState.commonState(commonState: CommonState.error(errorMessage: failure.message)));
      },
      (message) => emit(ExpensesState.expenseDeleted(message)),
    );
  }

  Future<void> _updateExpense(Emitter<ExpensesState> emit, ExpenseDto expenseDto) async {
    final result = await _updateExpenseUseCase(expenseDto);
    result.fold(
      (failure) {
        emit(ExpensesState.commonState(commonState: CommonState.error(errorMessage: failure.message)));
      },
      (message) => emit(ExpensesState.expenseUpdated(message)),
    );
  }
}
