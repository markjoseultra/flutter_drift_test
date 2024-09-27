import 'package:drift_test/data/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dbProvider = Provider<AppDatabase>((ref) {
  return AppDatabase();
});
