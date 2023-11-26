import 'package:expenses_tracker_ddd/domain/expense/expense.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Title', () {
    test('Should return a ValidationException when the title is empty', () {
      final result = Title.create('');
      expect(result.isLeft, true);
      expect(result.left.message, 'Title can not be empty.');
    });

    test('Should return a ValidationException when the title is longer than 50 characters', () {
      final longTitle = 'a' * 51; // Creates a string of 51 'a' characters
      final result = Title.create(longTitle);
      expect(result.isLeft, true);
      expect(result.left.message, 'Title can not be longer than 50 characters.');
    });

    test('Should create a title when the value is valid', () {
      const validTitle = 'Valid Title';
      final result = Title.create(validTitle);
      expect(result.isRight, true);
      expect(result.right, isA<Title>());
      expect(result.right.value, validTitle);
      expect(result.right.props, containsAll([result.right.value]));
    });
  });
}
