part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.start() = HomeStarted;
  const factory HomeEvent.changeState(HomeStateValue state) = HomeStateChanged;
}