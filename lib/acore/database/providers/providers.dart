import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/acore/database/infrastructure/database.dart';

final databaseProvider = Provider((ref) => Database());
