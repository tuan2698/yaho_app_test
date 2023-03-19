import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:yaho_test/modules/data/datasources/local_datasource.dart';
import 'package:yaho_test/modules/data/datasources/remote_datasource.dart';
import 'package:yaho_test/modules/domain/models/base_data.dart';
import 'package:yaho_test/modules/reusable/utils/image_utils.dart';

@lazySingleton
class UserRepository {
  final RemoteDatasource _remoteDatasource;
  final LocalDatasource _localDatasource;

  UserRepository(this._remoteDatasource, this._localDatasource);

  Future<BaseData> getUsers(int page) async {
    final users = await _remoteDatasource.getUsers(page);
    final avatarsCache = _localDatasource.getImages();

    Map<int, String> saveData = {};

    users.data?.forEach((element) async {
      var response = await HttpClient().getUrl(Uri.parse(element["avatar"]));
      var bytes = await consolidateHttpClientResponseBytes(await response.close());

      var localPath = await ImageUtils.saveFile(element["id"].toString(), bytes);
      int id = element["id"];
      String avatar = localPath;
      saveData.addEntries({id: avatar}.entries);
    });

    _localDatasource.saveImages(saveData);
    users.data?.forEach((userData) {
      avatarsCache.forEach((key, value) {
        if (userData["id"] == key) {
          userData["avatar"] = value;
        }
      });
    });
    return users;
  }

  Future<bool> updateUserLike(String value) => _localDatasource.updateUserLike(value);

  Future<List<int>> getUsersLike() async => _localDatasource.getUsersLike().map((e) => int.parse(e)).toList();
}
