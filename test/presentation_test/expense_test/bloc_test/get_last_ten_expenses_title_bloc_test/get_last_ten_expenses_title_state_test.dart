import 'package:expenses_tracker_ddd/domain/expense/value_object/title.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/get_last_ten_expenses_title_bloc/get_last_ten_expenses_title_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GetLastTenExpensesTitleState', () {
    test('commonState supports value comparisons', () {
      expect(
        const GetLastTenExpensesTitleState.commonState(commonState: CommonState.initial()),
        const GetLastTenExpensesTitleState.commonState(commonState: CommonState.initial()),
      );
      expect(
        const GetLastTenExpensesTitleState.commonState(commonState: CommonState.loading()),
        isNot(const GetLastTenExpensesTitleState.commonState(commonState: CommonState.initial())),
      );
    });

    test('expensesTitleLoaded supports value comparisons', () {
      final titlesList1 = [
        const Title('Groceries'),
        const Title('Utilities'),
      ];
      final titlesList2 = [
        const Title('Groceries'),
        const Title('Utilities'),
      ];

      expect(
        GetLastTenExpensesTitleState.expensesTitleLoaded(titlesList1),
        GetLastTenExpensesTitleState.expensesTitleLoaded(titlesList2),
      );

      final differentTitlesList = [
        const Title('Rent'),
      ];
      expect(
        GetLastTenExpensesTitleState.expensesTitleLoaded(titlesList1),
        isNot(GetLastTenExpensesTitleState.expensesTitleLoaded(differentTitlesList)),
      );
    });
  });
}
