import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yaho_test/core/ui/base_view_state.dart';
import 'package:yaho_test/injector.dart';
import 'package:yaho_test/modules/reusable/pull_to_refresh_load_more.dart';
import 'package:yaho_test/modules/ui/home/bloc/home_bloc.dart';
import 'package:yaho_test/modules/ui/home/home_page_model.dart';
import 'package:yaho_test/modules/ui/home/widget/list_item.dart';

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
          title: Text("Home"),
        ),
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

  Widget _buildContent() => PullToRefreshNLoadMore(
        refreshController: viewModel.refreshController,
        onLoadMore: () => viewModel.onLoadMore(),
        onRefresh: () => viewModel.initUserData(),
        child: ListView.builder(
          itemCount: viewModel.users.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => ListItem(user: viewModel.users[index]),
        ),
      );

  Widget _buildLoading() => Container(
        child: Text("loading"),
      );

  Widget _buildFailed() => Container(
        child: Text("failed"),
      );

  Widget _buildEmpty() => Container(
        child: Text("empty"),
      );

  @override
  createViewModel() => getIt<HomePageModel>();
}
