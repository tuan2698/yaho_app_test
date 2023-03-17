import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageCustom extends StatelessWidget {
  final String uri;

  ImageCustom({Key? key, required this.uri}) : super(key: key);

  String placeHolder =
      "https://media.istockphoto.com/id/1327592506/vi/vec-to/bi%E1%BB%83u-t%C6%B0%E1%BB%A3ng-ch%E1%BB%97-d%C3%A0nh-s%E1%BA%B5n-%E1%BA%A3nh-%C4%91%E1%BA%A1i-di%E1%BB%87n-m%E1%BA%B7c-%C4%91%E1%BB%8Bnh-%E1%BA%A3nh-%C4%91%E1%BA%A1i-di%E1%BB%87n-m%C3%A0u-x%C3%A1m-doanh-nh%C3%A2n.jpg?s=1024x1024&w=is&k=20&c=BX9oFtYdk-SqS51mHe6yWh9SZRSPFhszAcgh5E-jn_s=";

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      width: 50.w,
      height: 50.h,
      image:
          (uri.contains("http") || uri.contains("https")) ? FileImage(File(uri)) as ImageProvider : NetworkImage(uri),
      fit: BoxFit.fill,
      placeholder: NetworkImage(placeHolder),
      imageErrorBuilder: (ctx, error, strace) => Image.network(
        placeHolder,
        width: 50.w,
        height: 50.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
