import 'package:expenses_tracker_ddd/domain/core/validation_exception.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ValidationException', () {
    test('Should contain the correct message', () {
      const testMessage = 'Test Exception Message';
      final exception = ValidationException(testMessage);

      expect(exception.message, testMessage);
    });
  });
}
