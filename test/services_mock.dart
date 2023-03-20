import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yaho_test/modules/data/datasources/local_datasource.dart';
import 'package:yaho_test/modules/data/datasources/remote_datasource.dart';
import 'package:yaho_test/modules/data/services/service.dart';
import 'package:yaho_test/modules/domain/models/base_data.dart';

class SharePreferenceMock extends Mock  implements SharedPreferences{}

class ServiceMock extends Mock  implements Service{
  @override
  Future<BaseData> getUsers(int page) async => BaseData.fromJson(fakeData);
}

class RemoteDataSourceMock extends Mock  implements RemoteDatasource{}

class LocalDataSourceMock extends Mock  implements LocalDatasource{}

final fakeData = {
  "page":2,
  "per_page":6,
  "total":12,
  "total_pages":2,
  "data":[
    {
      "id":7,
      "email":"michael.lawson@reqres.in",
      "first_name":"Michael",
      "last_name":"Lawson",
      "avatar":"https://reqres.in/img/faces/7-image.jpg"
    },
    {
      "id":8,
      "email":"lindsay.ferguson@reqres.in",
      "first_name":"Lindsay",
      "last_name":"Ferguson",
      "avatar":"https://reqres.in/img/faces/8-image.jpg"
    },
  ],
  "support":{
    "url":"https://reqres.in/#support-heading",
    "text":"To keep ReqRes free, contributions towards server costs are appreciated!"
  }
};