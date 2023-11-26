import 'package:expenses_tracker_ddd/core/data_source_managers/local_source_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/mocks.dart';

void main() {
  group('LocalDatabaseManager Tests', () {
    late MockLogger mockLogger;

    setUp(() {
      mockLogger = MockLogger();
    });

    test('In-Memory Database should be created successfully', () async {
      // Arrange & Act
      final db = LocalDatabaseManager(openInMemoryConnection(mockLogger));
      // Assert
      verify(() => mockLogger.i('In memory db created successfully')).called(1);
      expect(db, isNotNull);
      await db.close();
    });
    test('Production Database should be created successfully', () async {
      // Arrange & Act
      final db = LocalDatabaseManager(openRealConnection(mockLogger));
      // Assert
      expect(db, isNotNull);
      verify(() => mockLogger.i('Production db created successfully')).called(1);
      await db.close();
    });
  });
}
