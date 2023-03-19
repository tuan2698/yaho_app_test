import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:yaho_test/core/ui/base_view_model.dart';
import 'package:yaho_test/modules/domain/models/user.dart';
import 'package:yaho_test/modules/domain/usecases/get_user_usecase.dart';
import 'package:yaho_test/modules/domain/usecases/get_users_like_usecase.dart';
import 'package:yaho_test/modules/domain/usecases/update_user_like_usecase.dart';
import 'package:yaho_test/modules/ui/home/bloc/home_boc/home_bloc.dart';
import 'package:yaho_test/modules/ui/home/bloc/users_bloc/users_bloc.dart';

@injectable
class HomePageModel extends BaseViewModel {
  final HomeBloc homeBloc;
  final UsersBloc usersBloc;
  final GetUserUsecase _getUserUsecase;
  final GetUsersLikeUsecase _getUsersLikeUsecase;
  final UpdateUserLikeUsecase _updateUserLikeUsecase;

  HomePageModel(
      this.homeBloc, this._getUserUsecase, this.usersBloc, this._updateUserLikeUsecase, this._getUsersLikeUsecase);

  List<User> users = [];
  final RefreshController refreshController = RefreshController();
  int page = 1;
  int totalPage = 0;
  List<bool> isSelected = [false, true];

  @override
  void initState() async{
    usersBloc.add(SwitchToggleButton(isSelected));
    initUserData(showLoading: true);
    final users = await _getUsersLikeUsecase.call();
    usersBloc.add(LikeUserEvent(users));
    super.initState();
  }

  Future initUserData({bool showLoading = false}) async {
    usersBloc.add(const LoadEvent(false));
    await call(() async {
      page = 1;
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
        usersBloc.add(LoadUsers(users));
        return;
      }
      homeBloc.add(const HomeStateChanged(HomeStateValue.empty));
    }, onFailure: (err) {
      homeBloc.add(const HomeStateChanged(HomeStateValue.failed));
    }, showLoading: showLoading);
    usersBloc.add(const LoadEvent(true));
  }

  Future onLoadMore() async {
    if (page > totalPage) return;
    usersBloc.add(const LoadEvent(false));
    page++;
    await call(() async {
      final res = await _getUserUsecase.call(page);
      if (res.data != null && res.data?.isNotEmpty == true) {
        users.addAll(res.data!.map((e) => User.fromJson(e)).toList());
      } else {}
    }, onSuccess: () {
      usersBloc.add(LoadUsers(users));
      refreshController.loadComplete();
      homeBloc.add(const HomeStateChanged(HomeStateValue.success));
    }, showLoading: false);
    usersBloc.add(const LoadEvent(true));
  }

  void onSwitchListGrid(int index) {
    usersBloc.add(const LoadEvent(false));
    isSelected[index] = !isSelected[index];
    for (int i = 0; i < isSelected.length; i++) {
      if (index != i) {
        isSelected[i] = false;
      }
    }
    usersBloc.add(SwitchToggleButton(isSelected));
    usersBloc.add(const LoadEvent(true));
  }

  void updateUserLike(int id) async {
    await _updateUserLikeUsecase.call(id.toString());
    final users = await _getUsersLikeUsecase.call();
    usersBloc.add(LikeUserEvent(users));
  }
}
