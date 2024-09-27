import 'package:drift/drift.dart';

class ResponseInputTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text().named("name")();

  IntColumn get dateCreatedInMilliseconds =>
      integer().named("dateCreatedInMilliseconds")();

  Int64Column get bigNumber => int64().named("bigNumber")();

  DateTimeColumn get dateCreatedInDateTime =>
      dateTime().named("dateCreatedInDateTime")();

  RealColumn get decimal => real().named("decimal")();

  BlobColumn get imageBytes => blob().named("imageBytes")();

  TextColumn get jsonData => text().named('jsonData')();

  BoolColumn get isSynced => boolean().named("isSynced")();
}
