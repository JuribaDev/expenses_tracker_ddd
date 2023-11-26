import 'package:expenses_tracker_ddd/config/enum/env.dart';
import 'package:expenses_tracker_ddd/core/data_source_managers/local_source_manager.dart';
import 'package:expenses_tracker_ddd/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';

import 'helpers/mocks.dart';

void main() {
  final sl = GetIt.instance;
  late MockLogger logger;

  setUpAll(() async {
    logger = MockLogger();
    await initializeDependencies(logger, env: Environment.development);
  });

  group('Service Locator Tests', () {
    test('should register Logger', () {
      final instance = sl<Logger>();
      expect(instance, isNotNull);
      expect(instance, isA<Logger>());
    });

    test('should register LocalDatabaseManager', () {
      final instance = sl<LocalDatabaseManager>();
      expect(instance, isNotNull);
      expect(instance, isA<LocalDatabaseManager>());
      verify(() => logger.i('Production db created successfully')).called(1);
    });
  });
}
