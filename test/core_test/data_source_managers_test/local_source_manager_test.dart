import 'package:expenses_tracker_ddd/core/data_source_managers/connection/connection.dart' as impl;
import 'package:expenses_tracker_ddd/core/data_source_managers/connection/in_memory_connection.dart';
import 'package:expenses_tracker_ddd/core/data_source_managers/drift_local_source_manager.dart';
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
      final db = DriftLocalDatabaseManager(openInMemoryConnection(mockLogger));
      // Assert
      verify(() => mockLogger.i('In memory db created successfully')).called(1);
      expect(db, isNotNull);
      await db.close();
    });
    test('On other platforms Database should be created successfully', () async {
      // Arrange & Act
      final db = DriftLocalDatabaseManager(impl.connect(mockLogger));
      // Assert
      expect(db, isNotNull);
      verify(() => mockLogger.i('Other platforms production db created successfully')).called(1);
      await db.close();
    });
  });
}
