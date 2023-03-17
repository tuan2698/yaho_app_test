import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yaho_test/core/config/app_config.dart';
import 'package:yaho_test/core/config/backend_config.dart';
import 'package:yaho_test/core/server/http_client_wrapper.dart';
import 'package:yaho_test/core/server/http_error.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  @lazySingleton
  Logger getLogger() => Logger(
    level: AppConfig.LOG_LEVEL,
    printer: SimplePrinter(),
  );

  @lazySingleton
  @preResolve
  Future<SharedPreferences> getSharePreferences() async => SharedPreferences.getInstance();

  @lazySingleton
  HttpClientWrapper getHttpClientWrapper(SharedPreferences prefs, Logger logger) {
    final HttpClientWrapper wrapper = HttpClientWrapper(
      options: BaseOptions(
        baseUrl: BackendConfig.BASE_URL,
        connectTimeout: BackendConfig.CONNECT_TIMEOUT,
        receiveTimeout: BackendConfig.RECEIVE_TIMEOUT,
        headers: {
          "Accept": "application/json",
        },
      ),
      unauthorizedResponseHandler: ({HttpError? httpError}) async {},
      logger: logger,
      verbose: AppConfig.LOG_LEVEL == Level.verbose,
    );
    return wrapper;
  }

  @lazySingleton
  Dio getDio(HttpClientWrapper httpClientWrapper) {
    return httpClientWrapper.dio;
  }
}
