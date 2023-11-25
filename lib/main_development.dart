import 'package:device_preview/device_preview.dart';
import 'package:expenses_tracker_ddd/app.dart';
import 'package:expenses_tracker_ddd/app_initializer.dart';
import 'package:expenses_tracker_ddd/config/enum/env.dart';
import 'package:expenses_tracker_ddd/config/state_tracker/bootstrap.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initAll(Logger(), env:Environment.development);
  await bootstrap(
        () => DevicePreview(
      builder: (context) => const App(), // Wrap your app
    ),
  );
}
