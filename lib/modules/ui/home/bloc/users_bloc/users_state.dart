part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState({
    @Default([]) List<User> users,
  }) = _UsersState;
}
