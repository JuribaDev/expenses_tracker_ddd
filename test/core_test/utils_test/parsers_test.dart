
// ignore_for_file: inference_failure_on_collection_literal

import 'package:expenses_tracker_ddd/core/utils/parsers.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {

  group('parseGenericList tests', () {
    test('should throw FormatException if data is not a List', () {
      // Arrange
      const data = 'not a list';
      // Act & Assert
      expect(
        () => parseGenericList(data, (json) => {}),
        throwsA(isA<Exception>()),
      );
    });

    test('should return a List of generic type T when data is a List of Maps', () {
      // Arrange
      final data = [
        {'key': 'value1'},
        {'key': 'value2'},
      ];
      // Act
      final parsedList = parseGenericList<Map<String, dynamic>>(
        data,
        (json) => json,
      );
      // Assert
      expect(parsedList, isA<List<Map<String, dynamic>>>());
      expect(parsedList[0]['key'], equals('value1'));
      expect(parsedList[1]['key'], equals('value2'));
    });

    test('should execute fromJson function on each element of the list', () {
      // Arrange
      final data = [
        {'key': 'value1'},
        {'key': 'value2'},
      ];
      // Act
      final parsedList = parseGenericList<String>(
        data,
        (json) => json['key'] as String,
      );
      // Assert
      expect(parsedList, isA<List<String>>());
      expect(parsedList[0], equals('value1'));
      expect(parsedList[1], equals('value2'));
    });
  });
}
