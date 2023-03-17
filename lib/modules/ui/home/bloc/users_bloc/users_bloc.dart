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
  }

  void _onLoadUsers(LoadUsers event,Emitter<UsersState> emit) {
    emit(state.copyWith(users: event.users));
  }
}