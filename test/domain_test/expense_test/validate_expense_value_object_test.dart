import 'package:expenses_tracker_ddd/domain/expense/expense.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Validation Functions', () {
    group('validateTitleOnChange tests', () {
      test('validateTitleOnChange should return error message for invalid title', () {
        final result = validateTitleOnChange('');
        expect(result, 'Title can not be empty.');
      });
      test('validateTitleOnChange should return null for valid title', () {
        final result = validateTitleOnChange('Valid Title');
        expect(result, isNull);
      });
    });

    group('validateAmountOnChange tests', () {
      test('validateAmountOnChange should return error message for invalid amount', () {
        final result = validateAmountOnChange('abc');
        expect(result, 'Amount must be a number.');
      });

      test('validateAmountOnChange should return null for valid amount', () {
        final result = validateAmountOnChange('100');
        expect(result, isNull);
      });
      test('validateAmountOnChange should return null for valid amount', () {
        final result = validateAmountOnChange('100.00000000');
        expect(result, isNull);
      });
      test('validateAmountOnChange should return error message for invalid amount', () {
        final result = validateAmountOnChange('10000000000.00');
        expect(result, 'Amount can not be greater than ${Amount.maxAmount}.');
      });
    });
  });
}
