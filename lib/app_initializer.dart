// ignore_for_file: flutter_style_todos, lines_longer_than_80_chars

import 'package:expenses_tracker_ddd/config/enum/env.dart';
import 'package:expenses_tracker_ddd/injection_container/inject_multi_platform_dependencies.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final sl = GetIt.instance;

class AppInitializer {
  static Future<void> initAll(Logger logger, {required Environment env}) async {
    await _initializeDependencies(logger, env: env);
  }

  static Future<void> _initializeDependencies(Logger logger, {required Environment env}) async {
    try {
      await injectMultiPlatformDependencies(logger, env: env, sl: sl);
    } catch (e, stackTrace) {
      logger.e('Specific error occurred in injectMultiPlatformDependencies: $e, stackTrace: $stackTrace');
      // ToDo: Display an Error screen, including a way to let the development team know that the app has crashed.
    }
  }
}
