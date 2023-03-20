import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yaho_test/core/ui/base_view_state.dart';
import 'package:yaho_test/injector.dart';
import 'package:yaho_test/modules/reusable/ui/pull_to_refresh_load_more.dart';
import 'package:yaho_test/modules/ui/home/bloc/home_boc/home_bloc.dart';
import 'package:yaho_test/modules/ui/home/bloc/users_bloc/users_bloc.dart';
import 'package:yaho_test/modules/ui/home/home_page_model.dart';
import 'package:yaho_test/modules/ui/home/widget/grid_item.dart';
import 'package:yaho_test/modules/ui/home/widget/home_drawer.dart';
import 'package:yaho_test/modules/ui/home/widget/list_item.dart';
import 'package:yaho_test/themes/image_resource.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseViewState<HomePage, HomePageModel> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => viewModel.homeBloc..add(const HomeStarted()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[200],
          actions: [_toggleGridList()],
        ),
        drawer: HomeDrawer(onChangeTheme: (context) {}),
        body: BlocConsumer<HomeBloc, HomeState>(
          bloc: viewModel.homeBloc,
          listener: (context, state) {},
          builder: (context, state) {
            switch (state.statusHome) {
              case HomeStateValue.initial:
                return _buildLoading();
              case HomeStateValue.success:
                return _buildContent();
              case HomeStateValue.failed:
                return _buildFailed();
              case HomeStateValue.empty:
                return _buildEmpty();
            }
          },
        ),
      ),
    );
  }

  Widget _buildContent() => BlocBuilder<UsersBloc, UsersState>(
        bloc: viewModel.usersBloc,
        builder: (context, UsersState state) {
          return PullToRefreshNLoadMore(
            refreshController: viewModel.refreshController,
            onLoadMore: () => viewModel.onLoadMore(),
            onRefresh: () => viewModel.initUserData(),
            child: viewModel.isSelected.first == true ? _buildList(state) : _buildGrid(state),
          );
        },
      );

  Widget _buildList(UsersState state) => ListView.builder(
        itemCount: state.users.length,
        shrinkWrap: true,
        itemBuilder: (context, index) =>
            ListItem(user: state.users[index], updateUserLike: () => viewModel.updateUserLike(state.users[index].id!)),
      );

  Widget _buildGrid(UsersState state) => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: state.users.length,
        shrinkWrap: true,
        itemBuilder: (context, index) =>
            GridItem(user: state.users[index], updateUserLike: () => viewModel.updateUserLike(state.users[index].id!)),
      );

  Widget _toggleGridList() => BlocBuilder<UsersBloc, UsersState>(
        bloc: viewModel.usersBloc,
        builder: (context, UsersState state) {
          return ToggleButtons(
            isSelected: state.togglesState,
            onPressed: (int index) => viewModel.onSwitchListGrid(index),
            children: const <Widget>[
              Icon(Icons.list, color: Colors.white),
              Icon(Icons.grid_view, color: Colors.white),
            ],
          );
        },
      );

  Widget _buildLoading() => Container();

  Widget _buildFailed() => Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          ImageResource.error,
          width: 60,
          height: 60,
          fit: BoxFit.scaleDown,
        ),
        SizedBox(height: 10.h),
        Text(
          "Lỗi xin vui lòng thử lại!",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 20),
        ),
      ],
    ),
  );

  Widget _buildEmpty() => Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          ImageResource.empty,
          width: 60,
          height: 60,
          fit: BoxFit.scaleDown,
        ),
        SizedBox(height: 10.h),
        Text(
          "Chưa có dữ liệu",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 20),
        ),
      ],
    ),
  );

  @override
  createViewModel() => getIt<HomePageModel>();
}
