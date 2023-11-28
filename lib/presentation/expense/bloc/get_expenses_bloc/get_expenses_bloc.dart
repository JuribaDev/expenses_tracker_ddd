import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/application/expense/use_case/get_expenses_use_case.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_expenses_bloc.freezed.dart';
part 'get_expenses_event.dart';
part 'get_expenses_state.dart';

class GetExpensesBloc extends Bloc<GetExpensesEvent, GetExpensesState> {
  GetExpensesBloc(this._getExpensesUseCase)
      : super(const GetExpensesState.commonState(commonState: CommonState.initial())) {
    on<GetExpensesEvent>(_onGetExpensesEvent);
  }

  final GetExpensesUseCase _getExpensesUseCase;

  Future<void> _onGetExpensesEvent(GetExpensesEvent event, Emitter<GetExpensesState> emit) async {
    emit(const GetExpensesState.commonState(commonState: CommonState.loading()));
    final result = await _getExpensesUseCase(null);
    result.fold(
      (failure) => emit(GetExpensesState.commonState(commonState: CommonState.error(errorMessage: failure.message))),
      (expenses) => emit(GetExpensesState.expensesLoaded(expenses)),
    );
  }
}
