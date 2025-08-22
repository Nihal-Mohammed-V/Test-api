import 'package:api_test/app/app.dart';
import 'package:api_test/src/infrastructure/services/services.dart';
import 'package:flutter/material.dart';

void main() async {

   WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp( MyApp());
}

