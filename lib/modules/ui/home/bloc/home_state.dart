part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStateValue.initial) HomeStateValue statusHome,
  }) = _HomeState;
}

enum HomeStateValue {
  initial,
  success,
  failed,
  empty,
}