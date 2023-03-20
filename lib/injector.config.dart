// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i6;
import 'package:yaho_test/core/server/http_client_wrapper.dart' as _i8;
import 'package:yaho_test/injector.dart' as _i17;
import 'package:yaho_test/modules/data/datasources/local_datasource.dart'
    as _i9;
import 'package:yaho_test/modules/data/datasources/remote_datasource.dart'
    as _i10;
import 'package:yaho_test/modules/data/repositories/user_repository.dart'
    as _i11;
import 'package:yaho_test/modules/data/services/service.dart' as _i5;
import 'package:yaho_test/modules/domain/usecases/get_user_usecase.dart'
    as _i13;
import 'package:yaho_test/modules/domain/usecases/get_users_like_usecase.dart'
    as _i14;
import 'package:yaho_test/modules/domain/usecases/update_user_like_usecase.dart'
    as _i15;
import 'package:yaho_test/modules/ui/home/bloc/home_boc/home_bloc.dart' as _i3;
import 'package:yaho_test/modules/ui/home/bloc/users_bloc/users_bloc.dart'
    as _i7;
import 'package:yaho_test/modules/ui/home/home_page_model.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.HomeBloc>(() => _i3.HomeBloc());
    gh.lazySingleton<_i4.Logger>(() => registerModule.getLogger());
    gh.lazySingleton<_i5.Service>(() => _i5.Service());
    await gh.lazySingletonAsync<_i6.SharedPreferences>(
      () => registerModule.getSharePreferences(),
      preResolve: true,
    );
    gh.lazySingleton<_i7.UsersBloc>(() => _i7.UsersBloc());
    gh.lazySingleton<_i8.HttpClientWrapper>(
        () => registerModule.getHttpClientWrapper(
              gh<_i6.SharedPreferences>(),
              gh<_i4.Logger>(),
            ));
    gh.lazySingleton<_i9.LocalDatasource>(
        () => _i9.LocalDatasourceImpl(gh<_i6.SharedPreferences>()));
    gh.lazySingleton<_i10.RemoteDatasource>(
        () => _i10.RemoteDatasourceImpl(gh<_i5.Service>()));
    gh.lazySingleton<_i11.UserRepository>(() => _i11.UserRepository(
          gh<_i10.RemoteDatasource>(),
          gh<_i9.LocalDatasource>(),
        ));
    gh.lazySingleton<_i12.Dio>(
        () => registerModule.getDio(gh<_i8.HttpClientWrapper>()));
    gh.lazySingleton<_i13.GetUserUsecase>(
        () => _i13.GetUserUsecase(gh<_i11.UserRepository>()));
    gh.lazySingleton<_i14.GetUsersLikeUsecase>(
        () => _i14.GetUsersLikeUsecase(gh<_i11.UserRepository>()));
    gh.lazySingleton<_i15.UpdateUserLikeUsecase>(
        () => _i15.UpdateUserLikeUsecase(gh<_i11.UserRepository>()));
    gh.factory<_i16.HomePageModel>(() => _i16.HomePageModel(
          gh<_i3.HomeBloc>(),
          gh<_i13.GetUserUsecase>(),
          gh<_i7.UsersBloc>(),
          gh<_i15.UpdateUserLikeUsecase>(),
          gh<_i14.GetUsersLikeUsecase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i17.RegisterModule {}
