import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:yaho_test/generated/locale_keys.g.dart';
import 'package:yaho_test/modules/reusable/ui/image_custom.dart';
import 'package:yaho_test/themes/image_resource.dart';
import 'package:yaho_test/themes/locale.dart';
import 'package:yaho_test/themes/themes_app.dart';

class HomeDrawer extends StatelessWidget {
  final Function(BuildContext context) onChangeTheme;

  const HomeDrawer({Key? key, required this.onChangeTheme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context, listen: false);
    return Drawer(
      backgroundColor: provider.mode == ThemeMode.dark
          ? Theme.of(context).colorScheme.onBackground
          : Theme.of(context).colorScheme.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getHeader(context),
          SizedBox(height: 10.h),
          itemOnOffModeTheme(context),
          SizedBox(height: 10.h),
          buildListLanguage(context)
        ],
      ),
    );
  }

  Widget getHeader(context) => Container(
        width: double.infinity,
        height: MediaQuery.of(context).padding.top + 100,
        color: Colors.red[200],
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, left: 5.w),
        child: Row(
          children: [
            ImageCustom(uri: ""),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Thanh Tuấn",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 18.sp, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "${LocaleKeys.detail_sex.tr()}: Male",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16.sp, color: Colors.white),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "ttuanvuong26@gmail.com",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16.sp, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget itemOnOffModeTheme(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context, listen: false);
    return GestureDetector(
      onTap: () {
        provider.toggleMode();
      },
      child: Container(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 5.w),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${LocaleKeys.detail_mode.tr()}: ',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent[200],
                      ),
                ),
                Text(provider.mode == ThemeMode.dark ? LocaleKeys.detail_dark.tr() : LocaleKeys.detail_light.tr(),
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: provider.mode == ThemeMode.dark ? Colors.white : Colors.black))
              ],
            ),
            SizedBox(width: 15.w),
            Icon(provider.mode == ThemeMode.dark ? Icons.dark_mode : Icons.light_mode,
                size: 60, color: provider.mode == ThemeMode.dark ? Colors.white : Colors.black),
          ],
        ),
      ),
    );
  }

  Widget buildListLanguage(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 5.w),
        Text('${LocaleKeys.detail_language.tr()}: ',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.pinkAccent[200])),
        SizedBox(width: 5.w),
        GestureDetector(
          onTap: () async {
            LocaleApp.defaultLocale = LocaleApp.locales.first;
            await context.setLocale(LocaleApp.locales.first);
          },
          child: Container(
            width: 80.w,
            height: 50.h,
            color: LocaleApp.defaultLocale == LocaleApp.locales.first ? Colors.red[200] : Colors.transparent,
            child: Center(child: Image.asset(ImageResource.uk, width: 30.w, height: 30.h)),
          ),
        ),
        SizedBox(width: 5.w),
        GestureDetector(
          onTap: () async {
            LocaleApp.defaultLocale = LocaleApp.locales.last;
            await context.setLocale(LocaleApp.locales.last);
          },
          child: Container(
            width: 80.w,
            height: 50.h,
            color: LocaleApp.defaultLocale == LocaleApp.locales.last ? Colors.red[200] : Colors.transparent,
            child: Center(child: Image.asset(ImageResource.vietnam, width: 30.w, height: 30.h)),
          ),
        ),
      ],
    );
  }
}
