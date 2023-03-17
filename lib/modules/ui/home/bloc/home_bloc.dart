import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeStarted>(_onHomeStarted);
    on<HomeStateChanged>(_onHomeStateChanged);
  }

  void _onHomeStarted(HomeStarted event,Emitter<HomeState> emit) {
    emit(state.copyWith(statusHome: HomeStateValue.initial));
  }

  void _onHomeStateChanged(HomeStateChanged event,Emitter<HomeState> emit) {
    emit(state.copyWith(statusHome: event.state));
  }
}