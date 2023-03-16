import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:yaho_test/core/server/http_error.dart';

typedef UnauthorizedResponseHandler = void Function({
  required HttpError httpError,
});

typedef ErrorMessageParser = String? Function({
  required HttpError httpError,
});

class HttpClientWrapper {
  final Dio dio = Dio();
  final Logger? logger;
  final UnauthorizedResponseHandler? unauthorizedResponseHandler;
  final ErrorMessageParser? errorMessageParser;

  HttpClientWrapper({
    required BaseOptions options,
    this.logger,
    bool verbose = false,
    this.unauthorizedResponseHandler,
    List<Interceptor>? extraInterceptors,
    this.errorMessageParser ,
  }) {
    dio.options = options;
    dio.interceptors.add(InterceptorsWrapper(onError: onError));

    if (logger != null) {
      if (verbose) {
        dio.interceptors.add(PrettyDioLogger(
            requestHeader: true, requestBody: true, responseBody: true, responseHeader: false, error: true, compact: false, maxWidth: 90));
      } else {
        dio.interceptors.add(PrettyDioLogger(
            requestHeader: true, requestBody: true, responseBody: true, responseHeader: false, error: true, compact: false, maxWidth: 90));
      }
    }

    if (extraInterceptors != null) {
      dio.interceptors.addAll(extraInterceptors);
    }
  }

  HttpError onError(DioError e,ErrorInterceptorHandler errorInterceptorHandler) {
    final HttpError httpError = HttpError(
      dioError: e,
      errorMessageParser: errorMessageParser,
    );

    if (httpError.response?.statusCode == HttpStatus.unauthorized) {
      logger!.w("Http Unauthorized Response");
      if (unauthorizedResponseHandler != null) {
        unauthorizedResponseHandler!(httpError: httpError);
      }
    }

    return httpError;
  }
}
