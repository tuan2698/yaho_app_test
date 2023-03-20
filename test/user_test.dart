import 'package:flutter_test/flutter_test.dart';
import 'package:yaho_test/modules/data/datasources/local_datasource.dart';
import 'package:yaho_test/modules/data/datasources/remote_datasource.dart';
import 'package:yaho_test/modules/data/repositories/user_repository.dart';
import 'package:yaho_test/modules/domain/models/base_data.dart';

import 'equals.dart';
import 'services_mock.dart';

void main() {
  late BaseData data;
  late RemoteDatasource dataSourceMock;
  late LocalDatasource localDataSourceMock;
  late UserRepository userRepository;

  setUp(() async {
    data = BaseData.fromJson(fakeData);
    dataSourceMock = RemoteDatasourceImpl(ServiceMock()) ;
    localDataSourceMock = LocalDatasourceImpl(SharePreferenceMock()) ;
    userRepository = UserRepository(dataSourceMock,localDataSourceMock);
  });

  group('getUsers', () {
    test('get users info success', () async{
      final resultData = await userRepository.getUsers(1);

      expect(equalsUsers(data,resultData), isTrue);
    });
  });
}
