import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/watch_last_month_expenses_bloc/watch_last_month_expenses_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('WatchLastMonthExpensesState', () {
    test('commonState supports value comparisons', () {
      expect(
        const WatchLastMonthExpensesState.commonState(commonState: CommonState.initial()),
        const WatchLastMonthExpensesState.commonState(commonState: CommonState.initial()),
      );
      expect(
        const WatchLastMonthExpensesState.commonState(commonState: CommonState.loading()),
        isNot(const WatchLastMonthExpensesState.commonState(commonState: CommonState.initial())),
      );
    });

    test('loaded supports value comparisons', () {
      final dummyData1 = [ExpenseDto(id: 1, title: 'Test 1', amount: '100', date: DateTime.now())];
      final dummyData2 = [ExpenseDto(id: 2, title: 'Test 2', amount: '200', date: DateTime.now())];

      final stream1 = Stream.fromIterable([dummyData1]);
      final stream2 = Stream.fromIterable([dummyData2]);

      expect(
        WatchLastMonthExpensesState.loaded(stream1),
        isNot(WatchLastMonthExpensesState.loaded(stream2)),
      );
    });
  });
}
