import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yaho_test/injector.dart';
import 'package:yaho_test/modules/domain/models/user.dart';
import 'package:yaho_test/modules/reusable/ui/image_custom.dart';
import 'package:yaho_test/modules/reusable/utils/url_launcher_utils.dart';
import 'package:yaho_test/modules/ui/home/bloc/users_bloc/users_bloc.dart';
import 'package:yaho_test/themes/image_resource.dart';

class ListItem extends StatelessWidget {
  final User user;
  final Function()? updateUserLike;

  ListItem({Key? key, required this.user, this.updateUserLike}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 12.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8.r),
          ),
          color: Theme.of(context).colorScheme.onPrimary),
      child: Row(
        children: [
          ImageCustom(uri: user.avatar ?? ""),
          SizedBox(width: 8.w),
          _content(context),
          const Spacer(),
          _likeButton()
        ],
      ),
    );
  }

  Widget _content(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(user.firstName! + user.lastName!, style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(height: 5.h),
        Text(user.email ?? "", style: Theme.of(context).textTheme.bodySmall),
        SizedBox(height: 5.h),
        Row(
          children: [
            GestureDetector(
                onTap: () => UrlLauncherUtils.goToAnotherApp("https://www.facebook.com/"),
                child: Image.asset(ImageResource.facebook, width: 30.w, height: 30.h)),
            SizedBox(width: 20.w),

            GestureDetector(
                onTap: () => UrlLauncherUtils.goToAnotherApp("https://mail.google.com/mail/"),
                child: Image.asset(ImageResource.gmail, width: 30.w, height: 30.h)),
          ],
        )
      ],
    );
  }

  Widget _likeButton() => BlocBuilder<UsersBloc, UsersState>(
      bloc: getIt<UsersBloc>(),
      builder: (context, UsersState state) {
        return GestureDetector(
          onTap: () => updateUserLike!(),
          child: Image.asset(
            state.likeUserState.any((element) => element == user.id)
                ? ImageResource.heart_selected
                : ImageResource.heart_unselected,
            width: 30.w,
            height: 30.h,
          ),
        );
      });
}
