import 'package:drift/drift.dart';

class ExpensesTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();

  RealColumn get amount => real()();

  DateTimeColumn get date => dateTime()();

  @override
  String get tableName => 'expenses';

  Set<Index> get indexes => {
        Index('index_title', 'title'),
        Index('index_amount', 'amount'),
        Index('index_date', 'date'),
      };
}
