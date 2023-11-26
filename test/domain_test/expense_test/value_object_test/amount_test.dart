import 'package:expenses_tracker_ddd/domain/expense/value_object/amount.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Amount', () {
    test('Should return a ValidationException when the amount is empty', () {
      final result = Amount.create('');
      expect(result.isLeft, true);
      expect(result.left.message, 'Amount can not be empty.');
    });

    test('Should return a ValidationException when the amount is not a number', () {
      final result = Amount.create('abc');
      expect(result.isLeft, true);
      expect(result.left.message, 'Amount must be a number.');
    });

    test('Should return a ValidationException when the amount is negative', () {
      final result = Amount.create('-5');
      expect(result.isLeft, true);
      expect(result.left.message, 'Amount can not be negative.');
    });

    test('Should return a ValidationException when the amount is zero', () {
      final result = Amount.create('0');
      expect(result.isLeft, true);
      expect(result.left.message, 'Amount can not be zero.');
    });

    test('Should return a ValidationException when the amount has more than two decimal places', () {
      final result = Amount.create('10.123');
      expect(result.isLeft, true);
      expect(result.left.message, 'Amount can not have more than 2 decimal places.');
    });

    test('Should return a ValidationException when the amount is greater than the max amount', () {
      final result = Amount.create('100000000');
      expect(result.isLeft, true);
      expect(result.left.message, 'Amount can not be greater than ${Amount.maxAmount}.');
    });

    test('Should create an amount when the value is valid', () {
      final result = Amount.create('50.30');
      expect(result.isRight, true);
      expect(result.right, isA<Amount>());
      expect(result.right.value, 50.30);
      expect(Amount.maxAmount, 99999999.99);
    });
  });
}
