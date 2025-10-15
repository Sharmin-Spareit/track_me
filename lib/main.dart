import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/constants/app_constants.dart';
import 'models/location_data.dart';
import 'widgets/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(LocationDataAdapter());
  await Hive.openBox<LocationData>(AppConstants.locationBoxName);
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
