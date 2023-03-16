import 'package:injectable/injectable.dart';
import 'package:yaho_test/modules/data/datasources/remote_datasource.dart';
import 'package:yaho_test/modules/domain/models/base_data.dart';

@lazySingleton
class UserRepository {
  final RemoteDatasource _remoteDatasource;

  UserRepository(this._remoteDatasource);

  Future<List<BaseData>> getUsers(int page) => _remoteDatasource.getUsers(page);
}
