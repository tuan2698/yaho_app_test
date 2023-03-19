part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState({
    @Default([]) List<User> users,
    @Default(false) bool event,
    @Default([false, true]) List<bool> togglesState,
    @Default([]) List<int> likeUserState,
  }) = _UsersState;
}
