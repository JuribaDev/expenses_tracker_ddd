import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expenses_tracker_ddd/application/expense/use_case/get_last_ten_expenses_title_use_case.dart';
import 'package:expenses_tracker_ddd/domain/expense/expense.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_last_ten_expenses_title_bloc.freezed.dart';
part 'get_last_ten_expenses_title_event.dart';
part 'get_last_ten_expenses_title_state.dart';

class GetLastTenExpensesTitleBloc extends Bloc<GetLastTenExpensesTitleEvent, GetLastTenExpensesTitleState> {
  GetLastTenExpensesTitleBloc(this._getLastTenExpensesTitleUseCase)
      : super(const GetLastTenExpensesTitleState.commonState(commonState: CommonState.initial())) {
    on<GetLastTenExpensesTitleEvent>(_onGetLastTenExpensesTitleEvent);
  }

  final GetLastTenExpensesTitleUseCase _getLastTenExpensesTitleUseCase;

  Future<void> _onGetLastTenExpensesTitleEvent(
    GetLastTenExpensesTitleEvent event,
    Emitter<GetLastTenExpensesTitleState> emit,
  ) async {
    emit(const GetLastTenExpensesTitleState.commonState(commonState: CommonState.loading()));
    final result = await _getLastTenExpensesTitleUseCase(null);
    result.fold(
      (failure) =>
          emit(GetLastTenExpensesTitleState.commonState(commonState: CommonState.error(errorMessage: failure.message))),
      (expenses) => emit(GetLastTenExpensesTitleState.expensesTitleLoaded(expenses)),
    );
  }
}
