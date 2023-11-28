import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/application/expense/watch_last_month_expenses_use_case.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watch_last_month_expenses_bloc.freezed.dart';
part 'watch_last_month_expenses_event.dart';
part 'watch_last_month_expenses_state.dart';

class WatchLastMonthExpensesBloc extends Bloc<WatchLastMonthExpensesEvent, WatchLastMonthExpensesState> {
  WatchLastMonthExpensesBloc(this._watchLastMonthExpensesUseCase)
      : super(const WatchLastMonthExpensesState.commonState(commonState: CommonState.initial())) {
    on<WatchLastMonthExpensesEvent>(_onWatchLastMonthExpensesEvent);
  }

  final WatchLastMonthExpensesUseCase _watchLastMonthExpensesUseCase;

  Future<void> _onWatchLastMonthExpensesEvent(
    WatchLastMonthExpensesEvent event,
    Emitter<WatchLastMonthExpensesState> emit,
  ) async {
    emit(const WatchLastMonthExpensesState.commonState(commonState: CommonState.loading()));
    final res = await _watchLastMonthExpensesUseCase(null);
    res.fold(
      (failure) => null,
      (stream) => emit(WatchLastMonthExpensesState.loaded(stream)),
    );
  }
}
