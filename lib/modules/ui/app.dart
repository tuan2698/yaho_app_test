import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:yaho_test/core/config/app_config.dart';
import 'package:yaho_test/core/ui/routes.dart';
import 'package:yaho_test/themes/themes_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => ThemeProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (ctx, themeObject, _) {
          return ScreenUtilInit(
            designSize: const Size(AppConfig.designWight, AppConfig.designHeight),
            builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              themeMode: AppConfig.themeMode,
              theme: ThemesApp.lightTheme,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              darkTheme: ThemesApp.darkTheme,
              onGenerateRoute: RouteGenerator.generateRoutes,
              initialRoute: '/',
              builder: EasyLoading.init(),
            ),
          );
        },
      ),
    );
  }
}
