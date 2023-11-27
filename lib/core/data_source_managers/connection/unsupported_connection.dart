import 'package:drift/drift.dart';
import 'package:logger/logger.dart';

Never _unsupported() {
  throw UnsupportedError('No suitable database implementation was found on this platform.');
}

// Depending on the platform the app is compiled to, the following stubs will
// be replaced with the methods in native.dart or web.dart

DatabaseConnection connect(Logger logger) {
  logger.e('No suitable database implementation was found on this platform.');
  _unsupported();
}

Future<void> validateDatabaseSchema(GeneratedDatabase database) async {
  _unsupported();
}
