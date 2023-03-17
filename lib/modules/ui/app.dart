import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yaho_test/core/config/app_config.dart';
import 'package:yaho_test/core/ui/routes.dart';
import 'package:yaho_test/themes/themes_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(AppConfig.designWight, AppConfig.designHeight),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: AppConfig.themeMode,
        theme: ThemesApp.lightTheme,
        darkTheme: ThemesApp.darkTheme,
        onGenerateRoute: RouteGenerator.generateRoutes,
        initialRoute: '/',
        builder: EasyLoading.init(),
      ),
    );
  }
}
