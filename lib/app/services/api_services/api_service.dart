import 'package:api_test/app/services/api_services/environment/env_config.dart';
import 'package:api_test/app/services/api_services/interceptors/error_api_interceptor.dart';
import 'package:api_test/app/services/api_services/interceptors/general_api_interceptor.dart';
import 'package:api_test/app/services/api_services/interceptors/profile_api_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class Api {
  final profile = createProfileDio();
  final general = createGeneralDio();
  final dioToken = Dio(BaseOptions(baseUrl: EnvConfiguration.current.baseUrl));

  Api._internal();

  static final _singleton = Api._internal();
  factory Api() => _singleton;

  /// Function for creating dio instance for calling apis
  /// requires access token
  static Dio createProfileDio() {
    var dio = Dio(
      BaseOptions(
        baseUrl: EnvConfiguration.current.baseUrl,
        receiveTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      ),
    );

    dio.interceptors.addAll([ProfileApiInterceptor(), ErrorApiInterceptor()]);

    return dio;
  }

  /// Function for creating dio instance for calling apis
  /// not requires access token
  static Dio createGeneralDio() {
    var dio = Dio(
      BaseOptions(
        headers: {
          'Tokenvalid': EnvConfiguration.current.validToken,
        },
        baseUrl: EnvConfiguration.current.baseUrl,
        receiveTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      ),
    );

    dio.interceptors.addAll([GeneralApiInterceptor(), ErrorApiInterceptor()]);

    return dio;
  }
}
