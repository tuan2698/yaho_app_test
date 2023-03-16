import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yaho_test/core/config/app_config.dart';
import 'package:yaho_test/injector.dart';
import 'package:yaho_test/modules/ui/home_page/home_page.dart';

void main() {
  configureDependencies();
  runApp(
    ScreenUtilInit(
      designSize: const Size(AppConfig.designWight, AppConfig.designHeight),
      builder: (context, child) => const HomePage(),
    ),
  );
}
