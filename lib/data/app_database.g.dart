// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ResponseInputTableTable extends ResponseInputTable
    with TableInfo<$ResponseInputTableTable, ResponseInputTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ResponseInputTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateCreatedInMillisecondsMeta =
      const VerificationMeta('dateCreatedInMilliseconds');
  @override
  late final GeneratedColumn<int> dateCreatedInMilliseconds =
      GeneratedColumn<int>('dateCreatedInMilliseconds', aliasedName, false,
          type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _bigNumberMeta =
      const VerificationMeta('bigNumber');
  @override
  late final GeneratedColumn<BigInt> bigNumber = GeneratedColumn<BigInt>(
      'bigNumber', aliasedName, false,
      type: DriftSqlType.bigInt, requiredDuringInsert: true);
  static const VerificationMeta _dateCreatedInDateTimeMeta =
      const VerificationMeta('dateCreatedInDateTime');
  @override
  late final GeneratedColumn<DateTime> dateCreatedInDateTime =
      GeneratedColumn<DateTime>('dateCreatedInDateTime', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _decimalMeta =
      const VerificationMeta('decimal');
  @override
  late final GeneratedColumn<double> decimal = GeneratedColumn<double>(
      'decimal', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _imageBytesMeta =
      const VerificationMeta('imageBytes');
  @override
  late final GeneratedColumn<Uint8List> imageBytes = GeneratedColumn<Uint8List>(
      'imageBytes', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _jsonDataMeta =
      const VerificationMeta('jsonData');
  @override
  late final GeneratedColumn<String> jsonData = GeneratedColumn<String>(
      'jsonData', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isSyncedMeta =
      const VerificationMeta('isSynced');
  @override
  late final GeneratedColumn<bool> isSynced = GeneratedColumn<bool>(
      'isSynced', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("isSynced" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        dateCreatedInMilliseconds,
        bigNumber,
        dateCreatedInDateTime,
        decimal,
        imageBytes,
        jsonData,
        isSynced
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'response_input_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<ResponseInputTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('dateCreatedInMilliseconds')) {
      context.handle(
          _dateCreatedInMillisecondsMeta,
          dateCreatedInMilliseconds.isAcceptableOrUnknown(
              data['dateCreatedInMilliseconds']!,
              _dateCreatedInMillisecondsMeta));
    } else if (isInserting) {
      context.missing(_dateCreatedInMillisecondsMeta);
    }
    if (data.containsKey('bigNumber')) {
      context.handle(_bigNumberMeta,
          bigNumber.isAcceptableOrUnknown(data['bigNumber']!, _bigNumberMeta));
    } else if (isInserting) {
      context.missing(_bigNumberMeta);
    }
    if (data.containsKey('dateCreatedInDateTime')) {
      context.handle(
          _dateCreatedInDateTimeMeta,
          dateCreatedInDateTime.isAcceptableOrUnknown(
              data['dateCreatedInDateTime']!, _dateCreatedInDateTimeMeta));
    } else if (isInserting) {
      context.missing(_dateCreatedInDateTimeMeta);
    }
    if (data.containsKey('decimal')) {
      context.handle(_decimalMeta,
          decimal.isAcceptableOrUnknown(data['decimal']!, _decimalMeta));
    } else if (isInserting) {
      context.missing(_decimalMeta);
    }
    if (data.containsKey('imageBytes')) {
      context.handle(
          _imageBytesMeta,
          imageBytes.isAcceptableOrUnknown(
              data['imageBytes']!, _imageBytesMeta));
    } else if (isInserting) {
      context.missing(_imageBytesMeta);
    }
    if (data.containsKey('jsonData')) {
      context.handle(_jsonDataMeta,
          jsonData.isAcceptableOrUnknown(data['jsonData']!, _jsonDataMeta));
    } else if (isInserting) {
      context.missing(_jsonDataMeta);
    }
    if (data.containsKey('isSynced')) {
      context.handle(_isSyncedMeta,
          isSynced.isAcceptableOrUnknown(data['isSynced']!, _isSyncedMeta));
    } else if (isInserting) {
      context.missing(_isSyncedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ResponseInputTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ResponseInputTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      dateCreatedInMilliseconds: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}dateCreatedInMilliseconds'])!,
      bigNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.bigInt, data['${effectivePrefix}bigNumber'])!,
      dateCreatedInDateTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}dateCreatedInDateTime'])!,
      decimal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}decimal'])!,
      imageBytes: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}imageBytes'])!,
      jsonData: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}jsonData'])!,
      isSynced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}isSynced'])!,
    );
  }

  @override
  $ResponseInputTableTable createAlias(String alias) {
    return $ResponseInputTableTable(attachedDatabase, alias);
  }
}

class ResponseInputTableData extends DataClass
    implements Insertable<ResponseInputTableData> {
  final int id;
  final String name;
  final int dateCreatedInMilliseconds;
  final BigInt bigNumber;
  final DateTime dateCreatedInDateTime;
  final double decimal;
  final Uint8List imageBytes;
  final String jsonData;
  final bool isSynced;
  const ResponseInputTableData(
      {required this.id,
      required this.name,
      required this.dateCreatedInMilliseconds,
      required this.bigNumber,
      required this.dateCreatedInDateTime,
      required this.decimal,
      required this.imageBytes,
      required this.jsonData,
      required this.isSynced});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['dateCreatedInMilliseconds'] = Variable<int>(dateCreatedInMilliseconds);
    map['bigNumber'] = Variable<BigInt>(bigNumber);
    map['dateCreatedInDateTime'] = Variable<DateTime>(dateCreatedInDateTime);
    map['decimal'] = Variable<double>(decimal);
    map['imageBytes'] = Variable<Uint8List>(imageBytes);
    map['jsonData'] = Variable<String>(jsonData);
    map['isSynced'] = Variable<bool>(isSynced);
    return map;
  }

  ResponseInputTableCompanion toCompanion(bool nullToAbsent) {
    return ResponseInputTableCompanion(
      id: Value(id),
      name: Value(name),
      dateCreatedInMilliseconds: Value(dateCreatedInMilliseconds),
      bigNumber: Value(bigNumber),
      dateCreatedInDateTime: Value(dateCreatedInDateTime),
      decimal: Value(decimal),
      imageBytes: Value(imageBytes),
      jsonData: Value(jsonData),
      isSynced: Value(isSynced),
    );
  }

  factory ResponseInputTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResponseInputTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      dateCreatedInMilliseconds:
          serializer.fromJson<int>(json['dateCreatedInMilliseconds']),
      bigNumber: serializer.fromJson<BigInt>(json['bigNumber']),
      dateCreatedInDateTime:
          serializer.fromJson<DateTime>(json['dateCreatedInDateTime']),
      decimal: serializer.fromJson<double>(json['decimal']),
      imageBytes: serializer.fromJson<Uint8List>(json['imageBytes']),
      jsonData: serializer.fromJson<String>(json['jsonData']),
      isSynced: serializer.fromJson<bool>(json['isSynced']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'dateCreatedInMilliseconds':
          serializer.toJson<int>(dateCreatedInMilliseconds),
      'bigNumber': serializer.toJson<BigInt>(bigNumber),
      'dateCreatedInDateTime':
          serializer.toJson<DateTime>(dateCreatedInDateTime),
      'decimal': serializer.toJson<double>(decimal),
      'imageBytes': serializer.toJson<Uint8List>(imageBytes),
      'jsonData': serializer.toJson<String>(jsonData),
      'isSynced': serializer.toJson<bool>(isSynced),
    };
  }

  ResponseInputTableData copyWith(
          {int? id,
          String? name,
          int? dateCreatedInMilliseconds,
          BigInt? bigNumber,
          DateTime? dateCreatedInDateTime,
          double? decimal,
          Uint8List? imageBytes,
          String? jsonData,
          bool? isSynced}) =>
      ResponseInputTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        dateCreatedInMilliseconds:
            dateCreatedInMilliseconds ?? this.dateCreatedInMilliseconds,
        bigNumber: bigNumber ?? this.bigNumber,
        dateCreatedInDateTime:
            dateCreatedInDateTime ?? this.dateCreatedInDateTime,
        decimal: decimal ?? this.decimal,
        imageBytes: imageBytes ?? this.imageBytes,
        jsonData: jsonData ?? this.jsonData,
        isSynced: isSynced ?? this.isSynced,
      );
  ResponseInputTableData copyWithCompanion(ResponseInputTableCompanion data) {
    return ResponseInputTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      dateCreatedInMilliseconds: data.dateCreatedInMilliseconds.present
          ? data.dateCreatedInMilliseconds.value
          : this.dateCreatedInMilliseconds,
      bigNumber: data.bigNumber.present ? data.bigNumber.value : this.bigNumber,
      dateCreatedInDateTime: data.dateCreatedInDateTime.present
          ? data.dateCreatedInDateTime.value
          : this.dateCreatedInDateTime,
      decimal: data.decimal.present ? data.decimal.value : this.decimal,
      imageBytes:
          data.imageBytes.present ? data.imageBytes.value : this.imageBytes,
      jsonData: data.jsonData.present ? data.jsonData.value : this.jsonData,
      isSynced: data.isSynced.present ? data.isSynced.value : this.isSynced,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ResponseInputTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('dateCreatedInMilliseconds: $dateCreatedInMilliseconds, ')
          ..write('bigNumber: $bigNumber, ')
          ..write('dateCreatedInDateTime: $dateCreatedInDateTime, ')
          ..write('decimal: $decimal, ')
          ..write('imageBytes: $imageBytes, ')
          ..write('jsonData: $jsonData, ')
          ..write('isSynced: $isSynced')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      dateCreatedInMilliseconds,
      bigNumber,
      dateCreatedInDateTime,
      decimal,
      $driftBlobEquality.hash(imageBytes),
      jsonData,
      isSynced);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResponseInputTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.dateCreatedInMilliseconds == this.dateCreatedInMilliseconds &&
          other.bigNumber == this.bigNumber &&
          other.dateCreatedInDateTime == this.dateCreatedInDateTime &&
          other.decimal == this.decimal &&
          $driftBlobEquality.equals(other.imageBytes, this.imageBytes) &&
          other.jsonData == this.jsonData &&
          other.isSynced == this.isSynced);
}

class ResponseInputTableCompanion
    extends UpdateCompanion<ResponseInputTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> dateCreatedInMilliseconds;
  final Value<BigInt> bigNumber;
  final Value<DateTime> dateCreatedInDateTime;
  final Value<double> decimal;
  final Value<Uint8List> imageBytes;
  final Value<String> jsonData;
  final Value<bool> isSynced;
  const ResponseInputTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.dateCreatedInMilliseconds = const Value.absent(),
    this.bigNumber = const Value.absent(),
    this.dateCreatedInDateTime = const Value.absent(),
    this.decimal = const Value.absent(),
    this.imageBytes = const Value.absent(),
    this.jsonData = const Value.absent(),
    this.isSynced = const Value.absent(),
  });
  ResponseInputTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int dateCreatedInMilliseconds,
    required BigInt bigNumber,
    required DateTime dateCreatedInDateTime,
    required double decimal,
    required Uint8List imageBytes,
    required String jsonData,
    required bool isSynced,
  })  : name = Value(name),
        dateCreatedInMilliseconds = Value(dateCreatedInMilliseconds),
        bigNumber = Value(bigNumber),
        dateCreatedInDateTime = Value(dateCreatedInDateTime),
        decimal = Value(decimal),
        imageBytes = Value(imageBytes),
        jsonData = Value(jsonData),
        isSynced = Value(isSynced);
  static Insertable<ResponseInputTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? dateCreatedInMilliseconds,
    Expression<BigInt>? bigNumber,
    Expression<DateTime>? dateCreatedInDateTime,
    Expression<double>? decimal,
    Expression<Uint8List>? imageBytes,
    Expression<String>? jsonData,
    Expression<bool>? isSynced,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (dateCreatedInMilliseconds != null)
        'dateCreatedInMilliseconds': dateCreatedInMilliseconds,
      if (bigNumber != null) 'bigNumber': bigNumber,
      if (dateCreatedInDateTime != null)
        'dateCreatedInDateTime': dateCreatedInDateTime,
      if (decimal != null) 'decimal': decimal,
      if (imageBytes != null) 'imageBytes': imageBytes,
      if (jsonData != null) 'jsonData': jsonData,
      if (isSynced != null) 'isSynced': isSynced,
    });
  }

  ResponseInputTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int>? dateCreatedInMilliseconds,
      Value<BigInt>? bigNumber,
      Value<DateTime>? dateCreatedInDateTime,
      Value<double>? decimal,
      Value<Uint8List>? imageBytes,
      Value<String>? jsonData,
      Value<bool>? isSynced}) {
    return ResponseInputTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      dateCreatedInMilliseconds:
          dateCreatedInMilliseconds ?? this.dateCreatedInMilliseconds,
      bigNumber: bigNumber ?? this.bigNumber,
      dateCreatedInDateTime:
          dateCreatedInDateTime ?? this.dateCreatedInDateTime,
      decimal: decimal ?? this.decimal,
      imageBytes: imageBytes ?? this.imageBytes,
      jsonData: jsonData ?? this.jsonData,
      isSynced: isSynced ?? this.isSynced,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (dateCreatedInMilliseconds.present) {
      map['dateCreatedInMilliseconds'] =
          Variable<int>(dateCreatedInMilliseconds.value);
    }
    if (bigNumber.present) {
      map['bigNumber'] = Variable<BigInt>(bigNumber.value);
    }
    if (dateCreatedInDateTime.present) {
      map['dateCreatedInDateTime'] =
          Variable<DateTime>(dateCreatedInDateTime.value);
    }
    if (decimal.present) {
      map['decimal'] = Variable<double>(decimal.value);
    }
    if (imageBytes.present) {
      map['imageBytes'] = Variable<Uint8List>(imageBytes.value);
    }
    if (jsonData.present) {
      map['jsonData'] = Variable<String>(jsonData.value);
    }
    if (isSynced.present) {
      map['isSynced'] = Variable<bool>(isSynced.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResponseInputTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('dateCreatedInMilliseconds: $dateCreatedInMilliseconds, ')
          ..write('bigNumber: $bigNumber, ')
          ..write('dateCreatedInDateTime: $dateCreatedInDateTime, ')
          ..write('decimal: $decimal, ')
          ..write('imageBytes: $imageBytes, ')
          ..write('jsonData: $jsonData, ')
          ..write('isSynced: $isSynced')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ResponseInputTableTable responseInputTable =
      $ResponseInputTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [responseInputTable];
}

typedef $$ResponseInputTableTableCreateCompanionBuilder
    = ResponseInputTableCompanion Function({
  Value<int> id,
  required String name,
  required int dateCreatedInMilliseconds,
  required BigInt bigNumber,
  required DateTime dateCreatedInDateTime,
  required double decimal,
  required Uint8List imageBytes,
  required String jsonData,
  required bool isSynced,
});
typedef $$ResponseInputTableTableUpdateCompanionBuilder
    = ResponseInputTableCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<int> dateCreatedInMilliseconds,
  Value<BigInt> bigNumber,
  Value<DateTime> dateCreatedInDateTime,
  Value<double> decimal,
  Value<Uint8List> imageBytes,
  Value<String> jsonData,
  Value<bool> isSynced,
});

class $$ResponseInputTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ResponseInputTableTable> {
  $$ResponseInputTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get dateCreatedInMilliseconds => $state.composableBuilder(
      column: $state.table.dateCreatedInMilliseconds,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<BigInt> get bigNumber => $state.composableBuilder(
      column: $state.table.bigNumber,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get dateCreatedInDateTime => $state.composableBuilder(
      column: $state.table.dateCreatedInDateTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get decimal => $state.composableBuilder(
      column: $state.table.decimal,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<Uint8List> get imageBytes => $state.composableBuilder(
      column: $state.table.imageBytes,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get jsonData => $state.composableBuilder(
      column: $state.table.jsonData,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isSynced => $state.composableBuilder(
      column: $state.table.isSynced,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ResponseInputTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ResponseInputTableTable> {
  $$ResponseInputTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get dateCreatedInMilliseconds =>
      $state.composableBuilder(
          column: $state.table.dateCreatedInMilliseconds,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<BigInt> get bigNumber => $state.composableBuilder(
      column: $state.table.bigNumber,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get dateCreatedInDateTime =>
      $state.composableBuilder(
          column: $state.table.dateCreatedInDateTime,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get decimal => $state.composableBuilder(
      column: $state.table.decimal,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<Uint8List> get imageBytes => $state.composableBuilder(
      column: $state.table.imageBytes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get jsonData => $state.composableBuilder(
      column: $state.table.jsonData,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isSynced => $state.composableBuilder(
      column: $state.table.isSynced,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$ResponseInputTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ResponseInputTableTable,
    ResponseInputTableData,
    $$ResponseInputTableTableFilterComposer,
    $$ResponseInputTableTableOrderingComposer,
    $$ResponseInputTableTableCreateCompanionBuilder,
    $$ResponseInputTableTableUpdateCompanionBuilder,
    (
      ResponseInputTableData,
      BaseReferences<_$AppDatabase, $ResponseInputTableTable,
          ResponseInputTableData>
    ),
    ResponseInputTableData,
    PrefetchHooks Function()> {
  $$ResponseInputTableTableTableManager(
      _$AppDatabase db, $ResponseInputTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ResponseInputTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$ResponseInputTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> dateCreatedInMilliseconds = const Value.absent(),
            Value<BigInt> bigNumber = const Value.absent(),
            Value<DateTime> dateCreatedInDateTime = const Value.absent(),
            Value<double> decimal = const Value.absent(),
            Value<Uint8List> imageBytes = const Value.absent(),
            Value<String> jsonData = const Value.absent(),
            Value<bool> isSynced = const Value.absent(),
          }) =>
              ResponseInputTableCompanion(
            id: id,
            name: name,
            dateCreatedInMilliseconds: dateCreatedInMilliseconds,
            bigNumber: bigNumber,
            dateCreatedInDateTime: dateCreatedInDateTime,
            decimal: decimal,
            imageBytes: imageBytes,
            jsonData: jsonData,
            isSynced: isSynced,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required int dateCreatedInMilliseconds,
            required BigInt bigNumber,
            required DateTime dateCreatedInDateTime,
            required double decimal,
            required Uint8List imageBytes,
            required String jsonData,
            required bool isSynced,
          }) =>
              ResponseInputTableCompanion.insert(
            id: id,
            name: name,
            dateCreatedInMilliseconds: dateCreatedInMilliseconds,
            bigNumber: bigNumber,
            dateCreatedInDateTime: dateCreatedInDateTime,
            decimal: decimal,
            imageBytes: imageBytes,
            jsonData: jsonData,
            isSynced: isSynced,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ResponseInputTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ResponseInputTableTable,
    ResponseInputTableData,
    $$ResponseInputTableTableFilterComposer,
    $$ResponseInputTableTableOrderingComposer,
    $$ResponseInputTableTableCreateCompanionBuilder,
    $$ResponseInputTableTableUpdateCompanionBuilder,
    (
      ResponseInputTableData,
      BaseReferences<_$AppDatabase, $ResponseInputTableTable,
          ResponseInputTableData>
    ),
    ResponseInputTableData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ResponseInputTableTableTableManager get responseInputTable =>
      $$ResponseInputTableTableTableManager(_db, _db.responseInputTable);
}
