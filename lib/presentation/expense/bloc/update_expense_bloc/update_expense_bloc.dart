import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/application/expense/use_case/update_expenses_use_case.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_expense_bloc.freezed.dart';

part 'update_expense_event.dart';

part 'update_expense_state.dart';

class UpdateExpenseBloc extends Bloc<UpdateExpenseEvent, UpdateExpenseState> {
  UpdateExpenseBloc(this._updateExpenseUseCase)
      : super(const UpdateExpenseState.commonState(commonState: CommonState.initial())) {
    on<UpdateExpenseEvent>(_onUpdateExpenseEvent);
  }

  final UpdateExpenseUseCase _updateExpenseUseCase;

  Future<void> _onUpdateExpenseEvent(UpdateExpenseEvent event, Emitter<UpdateExpenseState> emit) async {
    emit(const UpdateExpenseState.commonState(commonState: CommonState.loading()));
    final result = await _updateExpenseUseCase(event.expenseDto);
    result.fold(
      (failure) => emit(UpdateExpenseState.commonState(commonState: CommonState.error(errorMessage: failure.message))),
      (message) => emit(UpdateExpenseState.expenseUpdated(message)),
    );
  }
}
