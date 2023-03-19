import 'package:yaho_test/modules/domain/models/user.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

@lazySingleton
class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc() : super(const UsersState()) {
    on<LoadUsers>(_onLoadUsers);
    on<LoadEvent>(_onLoadEvent);
    on<SwitchToggleButton>(_onSwitchToggleButton);
    on<LikeUserEvent>(_onLikeUser);
  }

  void _onLoadUsers(LoadUsers event,Emitter<UsersState> emit) {
    emit(state.copyWith(users: event.users));
  }

  void _onLoadEvent(LoadEvent event,Emitter<UsersState> emit) {
    emit(state.copyWith(event: event.isLoading));
  }

  void _onSwitchToggleButton(SwitchToggleButton event,Emitter<UsersState> emit) {
    emit(state.copyWith(togglesState: event.toggleState));
  }

  void _onLikeUser(LikeUserEvent event,Emitter<UsersState> emit) {
    emit(state.copyWith(likeUserState: event.likeUserState));
  }
}