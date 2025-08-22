import 'package:api_test/app/constants/storage_constants.dart';
import 'package:api_test/app/services/api_services/environment/env_config.dart';
import 'package:api_test/app/services/api_services/utils/api_logger.dart';
import 'package:api_test/app/services/local_storage_service.dart';
import 'package:dio/dio.dart';

class ProfileApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    try {
      String? accessToken = LocalStorage.getString(StorageKey.accessToken);
      if (accessToken == null) {
        handler.reject(DioException(requestOptions: options), true);
      } else {
        options.headers['Authorization'] = 'Bearer $accessToken';
        options.headers['Tokenvalid'] = EnvConfiguration.current.validToken;
        options.headers['Accept'] = 'application/json';
        options.headers['Content-Type'] = 'application/json';
        handler.next(options);
      }
    } on StateError {
      /// Do nothing.
    } catch (e) {
      handler.reject(DioException(requestOptions: options), true);
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    ApiLogger.logSuccessResponse(response);
  }
}
