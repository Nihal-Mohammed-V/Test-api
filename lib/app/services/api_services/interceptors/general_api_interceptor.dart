import 'package:api_test/app/services/api_services/utils/api_logger.dart';
import 'package:dio/dio.dart';

class GeneralApiInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    ApiLogger.logSuccessResponse(response);
  }
}
