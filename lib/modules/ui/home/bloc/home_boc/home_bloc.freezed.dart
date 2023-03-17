// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(HomeStateValue state) changeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(HomeStateValue state)? changeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(HomeStateValue state)? changeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStarted value) start,
    required TResult Function(HomeStateChanged value) changeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStarted value)? start,
    TResult? Function(HomeStateChanged value)? changeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStarted value)? start,
    TResult Function(HomeStateChanged value)? changeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeStartedCopyWith<$Res> {
  factory _$$HomeStartedCopyWith(
          _$HomeStarted value, $Res Function(_$HomeStarted) then) =
      __$$HomeStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStartedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeStarted>
    implements _$$HomeStartedCopyWith<$Res> {
  __$$HomeStartedCopyWithImpl(
      _$HomeStarted _value, $Res Function(_$HomeStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeStarted implements HomeStarted {
  const _$HomeStarted();

  @override
  String toString() {
    return 'HomeEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(HomeStateValue state) changeState,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(HomeStateValue state)? changeState,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(HomeStateValue state)? changeState,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStarted value) start,
    required TResult Function(HomeStateChanged value) changeState,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStarted value)? start,
    TResult? Function(HomeStateChanged value)? changeState,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStarted value)? start,
    TResult Function(HomeStateChanged value)? changeState,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class HomeStarted implements HomeEvent {
  const factory HomeStarted() = _$HomeStarted;
}

/// @nodoc
abstract class _$$HomeStateChangedCopyWith<$Res> {
  factory _$$HomeStateChangedCopyWith(
          _$HomeStateChanged value, $Res Function(_$HomeStateChanged) then) =
      __$$HomeStateChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeStateValue state});
}

/// @nodoc
class __$$HomeStateChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeStateChanged>
    implements _$$HomeStateChangedCopyWith<$Res> {
  __$$HomeStateChangedCopyWithImpl(
      _$HomeStateChanged _value, $Res Function(_$HomeStateChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$HomeStateChanged(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as HomeStateValue,
    ));
  }
}

/// @nodoc

class _$HomeStateChanged implements HomeStateChanged {
  const _$HomeStateChanged(this.state);

  @override
  final HomeStateValue state;

  @override
  String toString() {
    return 'HomeEvent.changeState(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateChanged &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateChangedCopyWith<_$HomeStateChanged> get copyWith =>
      __$$HomeStateChangedCopyWithImpl<_$HomeStateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(HomeStateValue state) changeState,
  }) {
    return changeState(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(HomeStateValue state)? changeState,
  }) {
    return changeState?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(HomeStateValue state)? changeState,
    required TResult orElse(),
  }) {
    if (changeState != null) {
      return changeState(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStarted value) start,
    required TResult Function(HomeStateChanged value) changeState,
  }) {
    return changeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStarted value)? start,
    TResult? Function(HomeStateChanged value)? changeState,
  }) {
    return changeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStarted value)? start,
    TResult Function(HomeStateChanged value)? changeState,
    required TResult orElse(),
  }) {
    if (changeState != null) {
      return changeState(this);
    }
    return orElse();
  }
}

abstract class HomeStateChanged implements HomeEvent {
  const factory HomeStateChanged(final HomeStateValue state) =
      _$HomeStateChanged;

  HomeStateValue get state;
  @JsonKey(ignore: true)
  _$$HomeStateChangedCopyWith<_$HomeStateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  HomeStateValue get statusHome => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({HomeStateValue statusHome});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusHome = null,
  }) {
    return _then(_value.copyWith(
      statusHome: null == statusHome
          ? _value.statusHome
          : statusHome // ignore: cast_nullable_to_non_nullable
              as HomeStateValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateValue statusHome});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusHome = null,
  }) {
    return _then(_$_HomeState(
      statusHome: null == statusHome
          ? _value.statusHome
          : statusHome // ignore: cast_nullable_to_non_nullable
              as HomeStateValue,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState({this.statusHome = HomeStateValue.initial});

  @override
  @JsonKey()
  final HomeStateValue statusHome;

  @override
  String toString() {
    return 'HomeState(statusHome: $statusHome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.statusHome, statusHome) ||
                other.statusHome == statusHome));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusHome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({final HomeStateValue statusHome}) = _$_HomeState;

  @override
  HomeStateValue get statusHome;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
