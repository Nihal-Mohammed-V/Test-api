import 'dart:developer';

import 'package:dio/dio.dart';

class ApiLogger {
  static logSuccessResponse(Response response) {
    log('======================= API LOG =========================');
    log('[SUCCESS] Api Response -> ${response.data}');
    log('[SUCCESS] Api Request Path -> ${response.requestOptions.path}');
    log('[SUCCESS] Api Request Data -> ${response.requestOptions.data}');
  }

  static logFailureResponse(DioException err) {
    log('======================= API LOG =========================');
    if (err.response != null) {
      log('[FAIL] Api Error -> ${err.message}');
      log('[FAIL] Api Response -> ${err.response!.data}');
      log('[FAIL] Api Request Path -> ${err.requestOptions.path}');
      log('[FAIL] Api Request Data -> ${err.requestOptions.data}');
    } else {
      log('[FAIL] Api Error -> ${err.message}');
      log('[FAIL] Api Request Path -> ${err.requestOptions.path}');
      log('[FAIL] Api Request Data -> ${err.requestOptions.data}');
    }
  }
}
