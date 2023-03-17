import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:yaho_test/core/ui/bloc_observer.dart';
import 'package:yaho_test/injector.dart';
import 'package:yaho_test/modules/ui/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  setupEasyLoading();
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}
void setupEasyLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..maskType = EasyLoadingMaskType.black
    ..loadingStyle = EasyLoadingStyle.custom
    ..backgroundColor = Colors.white
    ..indicatorColor = Colors.green
    ..progressColor = Colors.green
    ..userInteractions = false
    ..textColor = Colors.black;
}
