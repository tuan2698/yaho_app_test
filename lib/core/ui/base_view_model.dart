import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

abstract class BaseViewModel {
  void initState() {}

  void disposeState() {}

  @protected
  Future<void> call(
      dynamic Function() handler, {
        bool showLoading = true,
        bool showToast = false,
        dynamic Function()? onSuccess,
        dynamic Function(dynamic error)? onFailure,
      }) async {

    var success = true;
    try {
      if (showLoading) {
        await EasyLoading.show();
      }
      final result = handler();
      if (result is Future) {
        await result;
      }
    } catch (error) {
      print("error: $error");
      success = false;
      final result = await onFailure!(error);
      if (result is Future) {
        await result;
      }
    } finally {
      if (showLoading) {
        await EasyLoading.dismiss();
      }
      if (success && onSuccess != null) {
        final result = onSuccess();
        if (result is Future) {
          await result;
        }
      }
    }
    return;
  }
}
