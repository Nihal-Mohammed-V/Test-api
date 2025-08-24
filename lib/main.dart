import 'package:api_test/app/app.dart';
import 'package:api_test/app/locator/locator.config.dart';
import 'package:api_test/app/services/local_storage_service.dart';
import 'package:api_test/src/application/auth_bloc/auth_bloc.dart';
import 'package:api_test/src/domain/repositories/auth_repository.dart';
import 'package:api_test/src/domain/repositories/user_repository.dart';
import 'package:api_test/src/infrastructure/services/dio_client.dart';
import 'package:api_test/src/presentation/views/login/loginscreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  sl.registerLazySingleton<DioClient>(() => DioClient());
  sl.registerLazySingleton<AuthRepository>(() => AuthRepository(sl()));
  sl.registerLazySingleton<UserRepository>(() => UserRepository(sl()));
  sl.registerFactory(() => AuthBloc(sl()));
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();

  runApp(MyApp());
}
