import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yaho_test/modules/domain/models/user.dart';
import 'package:yaho_test/modules/reusable/image_custom.dart';
import 'package:yaho_test/themes/themes_app.dart';

class ListItem extends StatelessWidget {
  final User user;

  const ListItem({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8.r),
          ),
          // color: colorTheme.backgroundPage
      ),
      child: Row(
        children: [ImageCustom(uri: user.avatar ?? ""), SizedBox(width: 8.w), _content(context), const Spacer()],
      ),
    );
  }

  Widget _content(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(user.firstName! + user.lastName!,
            // style: textTheme.textStyleTitleBlack
        ),
        SizedBox(height: 5.h),
        Text(user.email ?? "",
            // style: textTheme.textStyleNavigationFocus
        ),
      ],
    );
  }
}
