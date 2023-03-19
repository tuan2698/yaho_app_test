import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDatasource {
  Map<int, String> getImages();

  void saveImages(Map<int, String> images);

  List<String> getUsersLike();

  Future<bool> updateUserLike(String value);
}

@LazySingleton(as: LocalDatasource)
class LocalDatasourceImpl implements LocalDatasource {
  final SharedPreferences _sharedPreferences;

  LocalDatasourceImpl(this._sharedPreferences);

  Map<int, String> avatars = {};
  final keyUserLike = "keyUserLike";

  @override
  Map<int, String> getImages() => avatars;

  @override
  void saveImages(Map<int, String> images) {
    avatars = images;
  }

  @override
  List<String> getUsersLike() {
    final value = _sharedPreferences.getStringList(keyUserLike);
    if (value == null) return [];
    return value;
  }

  @override
  Future<bool> updateUserLike(String value) async {
    final string = _sharedPreferences.getStringList(keyUserLike);

    if (string == null) {
      await _sharedPreferences.setStringList(keyUserLike, [value]);
      return true;
    }
    List<String> list = string;
    if (list.any((element) => value == element)) {
      list.remove(value);
    } else {
      list.add(value);
    }
    await _sharedPreferences.setStringList(keyUserLike, list);
    return true;
  }
}
