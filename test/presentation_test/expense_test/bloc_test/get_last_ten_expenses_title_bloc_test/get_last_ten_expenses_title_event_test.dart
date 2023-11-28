import 'package:expenses_tracker_ddd/presentation/expense/bloc/get_last_ten_expenses_title_bloc/get_last_ten_expenses_title_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GetLastTenExpensesTitleEvent', () {
    test('can be instantiated', () {
      const event = GetLastTenExpensesTitleEvent.getLastTenExpensesTitleEvent();

      expect(event, isA<GetLastTenExpensesTitleEvent>());
    });

    test('supports value comparison', () {
      const event1 = GetLastTenExpensesTitleEvent.getLastTenExpensesTitleEvent();
      const event2 = GetLastTenExpensesTitleEvent.getLastTenExpensesTitleEvent();

      expect(event1, equals(event2));
    });
  });
}
