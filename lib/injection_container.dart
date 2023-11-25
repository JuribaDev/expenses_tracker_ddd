import 'package:expenses_tracker_ddd/config/enum/env.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies(Logger logger, {required Environment env}) async {

  // Logger
  sl.registerSingleton<Logger>(logger);

}
