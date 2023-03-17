import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:yaho_test/core/ui/base_view_model.dart';
import 'package:yaho_test/modules/domain/models/user.dart';
import 'package:yaho_test/modules/domain/usecases/get_user_usecase.dart';
import 'package:yaho_test/modules/ui/home/bloc/home_bloc.dart';

@injectable
class HomePageModel extends BaseViewModel {
  final HomeBloc homeBloc;
  final GetUserUsecase _getUserUsecase;

  HomePageModel(this.homeBloc, this._getUserUsecase);

  List<User> users = [];
  final RefreshController refreshController = RefreshController();
  int page = 0;
  int totalPage = 0;

  @override
  void initState() {
    initUserData(showLoading: true);
    super.initState();
  }

  Future initUserData({bool showLoading = false}) {
    return call(() async {
      page = 0;
      users.clear();
      final res = await _getUserUsecase.call(page);
      if (res.data != null && res.data?.isNotEmpty == true) {
        users.addAll(res.data!.map((e) => User.fromJson(e)).toList());
        totalPage = res.total ?? 0;
      } else {}
    }, onSuccess: () {
      if (users.isNotEmpty) {
        homeBloc.add(const HomeStateChanged(HomeStateValue.success));
        refreshController.refreshCompleted();
        return;
      }
      homeBloc.add(const HomeStateChanged(HomeStateValue.empty));
    }, onFailure: (err) {
      homeBloc.add(const HomeStateChanged(HomeStateValue.failed));
    }, showLoading: showLoading);
  }

  Future onLoadMore() async {
    if (page > totalPage) return;
    page++;
    return call(() async {
      final res = await _getUserUsecase.call(page);
      if (res.data != null && res.data?.isNotEmpty == true) {
        users.addAll(res.data!.map((e) => User.fromJson(e)).toList());
      } else {}
    }, onSuccess: () {
      refreshController.loadComplete();
      homeBloc.add(const HomeStateChanged(HomeStateValue.success));
    }, showLoading: false);
  }
}
