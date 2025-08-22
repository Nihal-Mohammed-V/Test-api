import 'package:api_test/app/router/app_router.dart';
import 'package:api_test/src/application/auth_bloc/auth_bloc.dart';
import 'package:api_test/src/application/user/user_bloc.dart';
import 'package:api_test/src/domain/repositories/auth_repository.dart';
import 'package:api_test/src/domain/repositories/user_repository.dart';
import 'package:api_test/src/infrastructure/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthBloc(sl<AuthRepository>()),
        ),
        BlocProvider(
          create: (_) => UserBloc(sl<UserRepository>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
