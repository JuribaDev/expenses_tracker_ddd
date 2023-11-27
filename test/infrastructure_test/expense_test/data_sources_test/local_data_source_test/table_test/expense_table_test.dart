import 'package:expenses_tracker_ddd/infrastructure/expense/data_sources/local_data_source/table/expense_table.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExpensesTable', () {
    final table = ExpensesTable();
    test('should have the correct table name', () {
      expect(table.tableName, 'expenses');
    });
    test('should have correct indexes', () {
      final indexes = table.indexes.map((index) => index.entityName).toList();

      expect(indexes, containsAll(['index_title', 'index_amount', 'index_date']));
    });
  });
}
