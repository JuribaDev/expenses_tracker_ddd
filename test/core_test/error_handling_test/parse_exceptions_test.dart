// ignore_for_file: inference_failure_on_function_invocation

import 'package:expenses_tracker_ddd/core/error_handling/parse_exceptions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/mocks.dart';

void main() {
  late MockLogger mockLogger;
  setUp(() {
    mockLogger = MockLogger();
    // clearInteractions(mockLogger);
  });

  group('parseExceptions', () {
    test('should return NonUserViewableException when FormatException is encountered', () {
      // Arrange
      const exception = FormatException();
      // Act
      final result = parseExceptions(exception, mockLogger);
      // Assert
      expect(result.toString(), 'An unexpected error occurred. Please try again later.');
      verify(() => mockLogger.e(any())).called(1);
    });

    test('should return NonUserViewableException when unexpected Exception is encountered', () {
      // Arrange
      final unexpectedException = Exception();
      // Act
      final result = parseExceptions(unexpectedException, mockLogger);
      // Assert
      expect(result.toString(), 'An unexpected error occurred. Please try again later.');
      verify(() => mockLogger.i(any())).called(1);
    });
  });
}
