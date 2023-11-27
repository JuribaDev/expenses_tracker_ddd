import 'package:drift/drift.dart';
import 'package:expenses_tracker_ddd/infrastructure/expense/data_sources/local_data_source/table/expense_table.dart';

part 'drift_local_source_manager.g.dart';

@DriftDatabase(tables: [ExpensesTable])
class DriftLocalDatabaseManager extends _$DriftLocalDatabaseManager {
  DriftLocalDatabaseManager(super.e);

  @override
  int get schemaVersion => 1;
}
