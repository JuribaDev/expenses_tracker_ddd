import 'package:expenses_tracker_ddd/app.dart';
import 'package:expenses_tracker_ddd/app_initializer.dart';
import 'package:expenses_tracker_ddd/config/enum/env.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initAll(Logger(), env: Environment.production);
  runApp(const App());
}
