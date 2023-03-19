import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class ImageUtils {
  static Future<String> saveFile(String filePath, Uint8List bytes) async {
    try {
      final Directory temp = await getTemporaryDirectory();
      var ls = filePath.split("/");
      String pathCreate = '${temp.path}/${ls.getRange(0, ls.length - 1).join("/")}';
      final myDir = Directory(pathCreate);
      var isThere = await myDir.exists();
      if (!isThere) {
        await Directory(pathCreate).create(recursive: true);
      }
      final File imageFile = File('${temp.path}/$filePath');
      imageFile.writeAsBytes(bytes);
      return imageFile.path;
    } catch (e) {
      return "";
    }
  }

}