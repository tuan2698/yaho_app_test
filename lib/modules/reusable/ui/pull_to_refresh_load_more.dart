import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PullToRefreshNLoadMore extends StatelessWidget {
  final RefreshController refreshController;
  final Widget child;
  final Function()? onRefresh;
  final Function()? onLoadMore;
  final Color? colorLoading;
  final Widget? headerLoading;
  final Widget? footer;

  const PullToRefreshNLoadMore(
      {Key? key,
      required this.refreshController,
      required this.child,
      this.onRefresh,
      this.onLoadMore,
      this.colorLoading,
      this.headerLoading,
      this.footer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      footer: footer ??
          const ClassicFooter(
            loadStyle: LoadStyle.ShowWhenLoading,
            canLoadingText: "Tải thêm",
            idleText: "Đang tải...",
            loadingText: "",
          ),
      controller: refreshController,
      enablePullDown: onRefresh != null,
      enablePullUp: onLoadMore != null,
      header: headerLoading ?? WaterDropMaterialHeader(backgroundColor: colorLoading ?? Colors.red[200]),
      onRefresh: onRefresh,
      onLoading: onLoadMore,
      child: child,
    );
  }
}
