import 'package:injectable/injectable.dart';
import 'package:yaho_test/modules/data/services/service.dart';
import 'package:yaho_test/modules/domain/models/base_data.dart';

abstract class RemoteDatasource {
  Future<List<BaseData>> getUsers(int page);
}

@LazySingleton(as: RemoteDatasource)
class RemoteDatasourceImpl implements RemoteDatasource {
  final Service _service;

  RemoteDatasourceImpl(this._service);

  @override
  Future<List<BaseData>> getUsers(int page) => _service.getUsers(page);
}
