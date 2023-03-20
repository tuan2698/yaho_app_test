import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yaho_test/config/backend_config.dart';
import 'package:yaho_test/core/server/http_client_wrapper.dart';
import 'package:yaho_test/injector.dart';
import 'package:yaho_test/modules/domain/models/base_data.dart';

part 'service.g.dart';

@lazySingleton
@RestApi(baseUrl: BackendConfig.BASE_URL)
abstract class Service {
  @factoryMethod
  factory Service() => _Service(getIt<HttpClientWrapper>().dio);

  @GET("users")
  Future<BaseData> getUsers(@Query('page') int page);
}
