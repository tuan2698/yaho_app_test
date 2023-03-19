part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent{
  const factory UsersEvent.loadUsers(List<User> users) = LoadUsers;
  const factory UsersEvent.loadEvent(bool isLoading) = LoadEvent;
  const factory UsersEvent.switchToggleButton(List<bool> toggleState) = SwitchToggleButton;
  const factory UsersEvent.likeUserEvent(List<int> likeUserState) = LikeUserEvent;
}