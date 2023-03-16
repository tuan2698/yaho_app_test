import 'package:flutter/material.dart';
import 'package:yaho_test/core/config/app_config.dart';
import 'package:yaho_test/core/ui/base_view_state.dart';
import 'package:yaho_test/injector.dart';
import 'package:yaho_test/modules/ui/home_page/home_page_model.dart';
import 'package:yaho_test/themes/themes_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseViewState<HomePage, HomePageModel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: AppConfig.themeMode,
      theme: ThemesApp.lightTheme,
      darkTheme: ThemesApp.darkTheme,
      initialRoute: "",
    );
  }

  @override
  createViewModel() => getIt<HomePageModel>();
}
