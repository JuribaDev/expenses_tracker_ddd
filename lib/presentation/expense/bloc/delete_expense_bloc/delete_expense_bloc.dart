import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expenses_tracker_ddd/application/expense/delete_expense_use_case.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_expense_bloc.freezed.dart';
part 'delete_expense_event.dart';
part 'delete_expense_state.dart';

class DeleteExpenseBloc extends Bloc<DeleteExpenseEvent, DeleteExpenseState> {
  DeleteExpenseBloc(this._deleteExpenseUseCase)
      : super(const DeleteExpenseState.commonState(commonState: CommonState.initial())) {
    on<DeleteExpenseEvent>(_onDeleteExpenseEvent);
  }

  final DeleteExpenseUseCase _deleteExpenseUseCase;

  Future<void> _onDeleteExpenseEvent(DeleteExpenseEvent event, Emitter<DeleteExpenseState> emit) async {
    emit(const DeleteExpenseState.commonState(commonState: CommonState.loading()));
    final result = await _deleteExpenseUseCase(event.id);
    result.fold(
      (failure) => emit(DeleteExpenseState.commonState(commonState: CommonState.error(errorMessage: failure.message))),
      (message) => emit(DeleteExpenseState.expenseDeleted(message)),
    );
  }
}
