import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yaho_test/core/config/app_config.dart';
import 'package:yaho_test/themes/color_resource.dart';
import 'package:yaho_test/themes/style_resource.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _mode;

  ThemeMode get mode => _mode;

  ThemeProvider({ThemeMode mode = ThemeMode.light}) : _mode = mode {
    AppConfig.themeMode = _mode;
  }

  void toggleMode() {
    _mode = _mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    AppConfig.themeMode = _mode;
    notifyListeners();
  }
}

class ThemesApp {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    cardColor: Colors.black,
    bottomAppBarColor: Colors.transparent,
    textTheme: getTextTheme(ThemeMode.light),
    colorScheme: getColorScheme(ThemeMode.light),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 1,
      shadowColor: Colors.grey.withOpacity(0.5),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.white,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.light,
    cardColor: Colors.black,
    backgroundColor: Colors.black,
    colorScheme: getColorScheme(ThemeMode.dark),
    textTheme: getTextTheme(ThemeMode.dark),
    bottomAppBarColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black.withOpacity(0.8),
      shadowColor: Colors.grey.withOpacity(0.8),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.black.withOpacity(0.8),
        systemNavigationBarColor: Colors.black.withOpacity(0.8),
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
  );

  static TextTheme getTextTheme(ThemeMode mode) {
    if (mode == ThemeMode.light) {
      return TextThemeApp(
          textStyleAppbarTitle: StyleResource.textStyleCaptionLight,
          textStyleTitleWhite: StyleResource.textStyleTitleWhiteLight,
          textStyleTitlePink: StyleResource.textStyleTitlePinkLight,
          textStyleTitleOrange: StyleResource.textStyleTitleOrangeLight,
          textStyleTitleDeepBlue: StyleResource.textStyleDeepBlueLight,
          textStyleTitleRed: StyleResource.textStyleRedLight,
          textStyleTitleBlack: StyleResource.textStyleTitleLight,
          textStyleTitleGrey: StyleResource.textStyleContentLight,
          textStyleNavigationFocus: StyleResource.textStyleNavigationBottomUnSelectedLight,
          textStyleNavigationFocused: StyleResource.textStyleNavigationBottomSelectedLight);
    }
    return TextThemeApp(
        textStyleAppbarTitle: StyleResource.textStyleCaptionDark,
        textStyleTitleWhite: StyleResource.textStyleTitleWhiteDark,
        textStyleTitlePink: StyleResource.textStyleTitlePinkDark,
        textStyleTitleDeepBlue: StyleResource.textStyleDeepBlueDark,
        textStyleTitleBlack: StyleResource.textStyleTitleDark,
        textStyleTitleRed: StyleResource.textStyleRedDark,
        textStyleTitleGrey: StyleResource.textStyleContentDark,
        textStyleNavigationFocus: StyleResource.textStyleNavigationBottomUnSelectedDark,
        textStyleNavigationFocused: StyleResource.textStyleNavigationBottomSelectedDark);
  }

  static ColorScheme getColorScheme(ThemeMode mode) {
    if (mode == ThemeMode.light) {
      return const ColorSchemeApp(
        scaffoldBackground: ColorResource.color_bg_home_light,
        appBarBackground: ColorResource.color_bg_appbar_light,
        borderLine: ColorResource.color_border_container_light,
        boxShadow: ColorResource.color_shadow_light,
        dividerLine: ColorResource.color_divider_light,
        buttonBackgroundPink: ColorResource.color_button_pink_light,
        navigationBottomBarBackground: ColorResource.color_navigation_bottom_light,
        buttonBack: ColorResource.color_button_back_light,
        buttonDisable: ColorResource.color_button_disable_light,
        buttonEnable: ColorResource.color_button_enable_light,
        backgroundDialog: ColorResource.color_background_dialog_light,
        backgroundPage: ColorResource.color_background_page_light,
        backgroundItemList: ColorResource.color_item_list_light,
        borderLineGray: ColorResource.color_border_line_gray_light,
        borderLinePink: ColorResource.color_border_line_pink_light,
        scrollbarThumb: ColorResource.color_scrollbar_thumb_light,
        scrollbarBackground: ColorResource.color_scrollbar_bg_light,
        bottomBarItemFocus: ColorResource.color_navigation_unfocus_light,
        bottomBarItemFocused: ColorResource.color_navigation_focus_light,
        iconLoading: ColorResource.color_button_pink_light,
        itemDeliveryBackground: ColorResource.color_cc_delivery_pink_light,
        itemPaymentBackground: ColorResource.color_cc_payment_pink_light,
        textBlack: ColorResource.color_cc_text_black_light,
        textGray: ColorResource.color_cc_text_grey_light,
        textPink: ColorResource.color_cc_text_caption_pink_light,
        textRed: ColorResource.color_red_light,
        textWhite: ColorResource.color_cc_text_title_white_light,
      );
    }

    return const ColorSchemeApp(
      scaffoldBackground: ColorResource.color_bg_home_dark,
      appBarBackground: ColorResource.color_bg_appbar_dark,
      borderLine: ColorResource.color_border_container_dark,
      boxShadow: ColorResource.color_shadow_dark,
      dividerLine: ColorResource.color_divider_dark,
      buttonBackgroundPink: ColorResource.color_button_pink_dark,
      navigationBottomBarBackground: ColorResource.color_navigation_bottom_dark,
      buttonBack: ColorResource.color_button_back_dark,
      buttonDisable: ColorResource.color_button_disable_dark,
      buttonEnable: ColorResource.color_button_enable_dark,
      backgroundDialog: ColorResource.color_background_dialog_dark,
      backgroundPage: ColorResource.color_background_page_dark,
      backgroundItemList: ColorResource.color_item_list_dark,
      borderLineGray: ColorResource.color_border_line_gray_dark,
      borderLinePink: ColorResource.color_border_line_pink_dark,
      scrollbarThumb: ColorResource.color_scrollbar_thumb_dark,
      scrollbarBackground: ColorResource.color_scrollbar_bg_dark,
      bottomBarItemFocus: ColorResource.color_navigation_unfocus_dark,
      bottomBarItemFocused: ColorResource.color_navigation_focus_dark,
      iconLoading: ColorResource.color_button_pink_light,
      itemDeliveryBackground: ColorResource.color_cc_delivery_pink_dark,
      itemPaymentBackground: ColorResource.color_cc_payment_pink_dark,
      textBlack: ColorResource.color_cc_text_black_dark,
      textGray: ColorResource.color_cc_text_grey_dark,
      textPink: ColorResource.color_cc_text_caption_pink_dark,
      textRed: ColorResource.color_red_dark,
      textWhite: ColorResource.color_cc_text_title_white_dark,
    );
  }
}

class TextThemeApp extends TextTheme {
  final TextStyle? textStyleNavigationFocus;
  final TextStyle? textStyleNavigationFocused;
  final TextStyle? textStyleTitleBlack;
  final TextStyle? textStyleTitleWhite;
  final TextStyle? textStyleTitlePink;
  final TextStyle? textStyleTitleDeepBlue;
  final TextStyle? textStyleTitleGrey;
  final TextStyle? textStyleAppbarTitle;
  final TextStyle? textStyleTitleOrange;
  final TextStyle? textStyleTitleRed;

  const TextThemeApp(
      {this.textStyleAppbarTitle,
      this.textStyleNavigationFocus,
      this.textStyleNavigationFocused,
      this.textStyleTitleBlack,
      this.textStyleTitleDeepBlue,
      this.textStyleTitleGrey,
      this.textStyleTitlePink,
      this.textStyleTitleWhite,
      this.textStyleTitleRed,
      this.textStyleTitleOrange});
}

extension CcTextThemeExtension on TextTheme {
  ThemeMode get _themeMode => AppConfig.themeMode;

  TextStyle get textStyleNavigationFocus => ThemesApp.getTextTheme(_themeMode).textStyleNavigationFocus;

  TextStyle get textStyleNavigationFocused => ThemesApp.getTextTheme(_themeMode).textStyleNavigationFocused;

  TextStyle get textStyleTitleBlack => ThemesApp.getTextTheme(_themeMode).textStyleTitleBlack;

  TextStyle get textStyleTitleWhite => ThemesApp.getTextTheme(_themeMode).textStyleTitleWhite;

  TextStyle get textStyleTitlePink => ThemesApp.getTextTheme(_themeMode).textStyleTitlePink;

  TextStyle get textStyleTitleOrange => ThemesApp.getTextTheme(_themeMode).textStyleTitleOrange;

  TextStyle get textStyleTitleDeepBlue => ThemesApp.getTextTheme(_themeMode).textStyleTitleDeepBlue;

  TextStyle get textStyleTitleGrey => ThemesApp.getTextTheme(_themeMode).textStyleTitleGrey;

  TextStyle get textStyleTitleRed => ThemesApp.getTextTheme(_themeMode).textStyleTitleRed;

  TextStyle get textStyleAppbarTitle {
    // "${CcApplication.instance.themeMode}".Log("abcccc");
    return ThemesApp.getTextTheme(_themeMode).textStyleAppbarTitle;
  }
}

class ColorSchemeApp extends ColorScheme {
  final Color? scaffoldBackground;
  final Color? dividerLine;
  final Color? borderLine;
  final Color? borderLineInput;
  final Color? navigationBottomBarBackground;
  final Color? appBarBackground;
  final Color? boxShadow;
  final Color? buttonBack;
  final Color? buttonDisable;
  final Color? buttonEnable;
  final Color? buttonBackgroundPink;
  final Color? backgroundDialog;
  final Color? backgroundPage;
  final Color? backgroundItemList;
  final Color? borderLineGray;
  final Color? borderLinePink;
  final Color? scrollbarThumb;
  final Color? scrollbarBackground;
  final Color? bottomBarItemFocus;
  final Color? bottomBarItemFocused;
  final Color? iconLoading;
  final Color? itemDeliveryBackground;
  final Color? itemPaymentBackground;
  final Color? textBlack;
  final Color? textGray;
  final Color? textPink;
  final Color? textRed;
  final Color? textWhite;

  const ColorSchemeApp({
    this.scaffoldBackground,
    this.dividerLine,
    this.borderLine,
    this.borderLineInput,
    this.navigationBottomBarBackground,
    this.appBarBackground,
    this.buttonBack,
    this.buttonDisable,
    this.buttonEnable,
    this.boxShadow,
    this.buttonBackgroundPink,
    this.backgroundDialog,
    this.backgroundPage,
    this.backgroundItemList,
    this.borderLineGray,
    this.borderLinePink,
    this.scrollbarThumb,
    this.scrollbarBackground,
    this.bottomBarItemFocus,
    this.bottomBarItemFocused,
    this.iconLoading,
    this.itemDeliveryBackground,
    this.itemPaymentBackground,
    this.textBlack,
    this.textGray,
    this.textPink,
    this.textRed,
    this.textWhite,
  }) : super.light();
}

extension CcCcColorSchemeExtension on ColorScheme {
  ThemeMode get _themeMode => AppConfig.themeMode;

  Color get scaffoldBackground => ThemesApp.getColorScheme(_themeMode).scaffoldBackground;

  Color get dividerLine => ThemesApp.getColorScheme(_themeMode).dividerLine;

  Color get borderLine => ThemesApp.getColorScheme(_themeMode).borderLine;

  Color get borderLineInput => ThemesApp.getColorScheme(_themeMode).borderLineInput;

  Color get navigationBottomBarBackground => ThemesApp.getColorScheme(_themeMode).navigationBottomBarBackground;

  Color get appBarBackground => ThemesApp.getColorScheme(_themeMode).appBarBackground;

  Color get boxShadow => ThemesApp.getColorScheme(_themeMode).boxShadow;

  Color get buttonBack => ThemesApp.getColorScheme(_themeMode).buttonBack;

  Color get buttonDisable => ThemesApp.getColorScheme(_themeMode).buttonDisable;

  Color get buttonEnable => ThemesApp.getColorScheme(_themeMode).buttonEnable;

  Color get buttonBackgroundPink => ThemesApp.getColorScheme(_themeMode).buttonBackgroundPink;

  Color get backgroundDialog => ThemesApp.getColorScheme(_themeMode).backgroundDialog;

  Color get backgroundPage => ThemesApp.getColorScheme(_themeMode).backgroundPage;

  Color get backgroundItemList => ThemesApp.getColorScheme(_themeMode).backgroundItemList;

  Color get borderLineGray => ThemesApp.getColorScheme(_themeMode).borderLineGray;

  Color get borderLinePink => ThemesApp.getColorScheme(_themeMode).borderLinePink;

  Color get scrollbarThumb => ThemesApp.getColorScheme(_themeMode).scrollbarThumb;

  Color get scrollbarBackground => ThemesApp.getColorScheme(_themeMode).scrollbarBackground;

  Color get bottomBarItemFocus => ThemesApp.getColorScheme(_themeMode).bottomBarItemFocus;

  Color get bottomBarItemFocused => ThemesApp.getColorScheme(_themeMode).bottomBarItemFocused;

  Color get itemDeliveryBackground => ThemesApp.getColorScheme(_themeMode).itemDeliveryBackground;

  Color get itemPaymentBackground => ThemesApp.getColorScheme(_themeMode).itemPaymentBackground;

  Color get textBlack => ThemesApp.getColorScheme(_themeMode).textBlack;

  Color get textGray => ThemesApp.getColorScheme(_themeMode).textGray;

  Color get textPink => ThemesApp.getColorScheme(_themeMode).textPink;

  Color get textRed => ThemesApp.getColorScheme(_themeMode).textRed;

  Color get textWhite => ThemesApp.getColorScheme(_themeMode).textWhite;
}
