import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yaho_test/themes/image_resource.dart';

class ImageCustom extends StatelessWidget {
  final String uri;

  ImageCustom({Key? key, required this.uri}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      width: 70.w,
      height: 70.h,
      image:
          (uri.contains("http") || uri.contains("https")) ? NetworkImage(uri) : FileImage(File(uri)) as ImageProvider,
      fit: BoxFit.fill,
      placeholder: NetworkImage(ImageResource.placeHolder),
      imageErrorBuilder: (ctx, error, strace) => Image.network(
        ImageResource.placeHolder,
        width: 70.w,
        height: 70.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
