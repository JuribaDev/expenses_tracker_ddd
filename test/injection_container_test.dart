import 'package:expenses_tracker_ddd/config/enum/env.dart';
import 'package:expenses_tracker_ddd/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'helpers/mocks.dart';

void main() {
  final sl = GetIt.instance;
  late MockLogger logger;

  setUpAll(() async {
    logger = MockLogger();
    await initializeDependencies(logger, env: Environment.development);
  });

  group('Dependency Injection Tests', () {
    test('should register Logger', () {
      final instance = sl<Logger>();
      expect(instance, isNotNull);
      expect(instance, isA<Logger>());
    });
  });
}
