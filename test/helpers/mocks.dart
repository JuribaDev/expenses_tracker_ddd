import 'package:expenses_tracker_ddd/infrastructure/expense/data_sources/local_data_source/drift_local_data_source.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';

class MockLogger extends Mock implements Logger {}

class MockDriftLocalDataSource extends Mock implements DriftLocalDataSource {}
