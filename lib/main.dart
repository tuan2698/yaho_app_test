import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:yaho_test/core/ui/bloc_observer.dart';
import 'package:yaho_test/injector.dart';
import 'package:yaho_test/modules/ui/app.dart';
import 'package:yaho_test/themes/locale.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  setupEasyLoading();
  Bloc.observer = AppBlocObserver();
  HttpOverrides.global = MyHttpOverrides();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: LocaleApp.locales,
        path: 'resources/langs', // <-- change the path of the translation files
        fallbackLocale: LocaleApp.defaultLocale,
        child: const MyApp()),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
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
