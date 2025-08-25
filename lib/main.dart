import 'package:api_test/app/app.dart';
import 'package:api_test/src/application/auth_bloc/auth_bloc.dart';
import 'package:api_test/src/domain/repositories/auth_repository.dart';
import 'package:api_test/src/domain/repositories/user_repository.dart';
import 'package:api_test/src/infrastructure/services/dio_client.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

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
