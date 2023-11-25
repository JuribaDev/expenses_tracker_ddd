import 'package:expenses_tracker_ddd/core/error_handling/non_user_viewable_exception.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NonUserViewableException', () {
    test('toString() should return the expected message', () {
      // Arrange
      final exception = NonUserViewableException();

      // Act & Assert
      expect(exception.toString(), 'An unexpected error occurred. Please try again later.');
    });
  });
}
