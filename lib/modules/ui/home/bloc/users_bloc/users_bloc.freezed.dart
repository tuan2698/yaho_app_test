// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<User> users) loadUsers,
    required TResult Function(bool isLoading) loadEvent,
    required TResult Function(List<bool> toggleState) switchToggleButton,
    required TResult Function(List<int> likeUserState) likeUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User> users)? loadUsers,
    TResult? Function(bool isLoading)? loadEvent,
    TResult? Function(List<bool> toggleState)? switchToggleButton,
    TResult? Function(List<int> likeUserState)? likeUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User> users)? loadUsers,
    TResult Function(bool isLoading)? loadEvent,
    TResult Function(List<bool> toggleState)? switchToggleButton,
    TResult Function(List<int> likeUserState)? likeUserEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(LoadEvent value) loadEvent,
    required TResult Function(SwitchToggleButton value) switchToggleButton,
    required TResult Function(LikeUserEvent value) likeUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(LoadEvent value)? loadEvent,
    TResult? Function(SwitchToggleButton value)? switchToggleButton,
    TResult? Function(LikeUserEvent value)? likeUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(LoadEvent value)? loadEvent,
    TResult Function(SwitchToggleButton value)? switchToggleButton,
    TResult Function(LikeUserEvent value)? likeUserEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res, UsersEvent>;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res, $Val extends UsersEvent>
    implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadUsersCopyWith<$Res> {
  factory _$$LoadUsersCopyWith(
          _$LoadUsers value, $Res Function(_$LoadUsers) then) =
      __$$LoadUsersCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class __$$LoadUsersCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$LoadUsers>
    implements _$$LoadUsersCopyWith<$Res> {
  __$$LoadUsersCopyWithImpl(
      _$LoadUsers _value, $Res Function(_$LoadUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$LoadUsers(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$LoadUsers implements LoadUsers {
  const _$LoadUsers(final List<User> users) : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UsersEvent.loadUsers(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUsers &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadUsersCopyWith<_$LoadUsers> get copyWith =>
      __$$LoadUsersCopyWithImpl<_$LoadUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<User> users) loadUsers,
    required TResult Function(bool isLoading) loadEvent,
    required TResult Function(List<bool> toggleState) switchToggleButton,
    required TResult Function(List<int> likeUserState) likeUserEvent,
  }) {
    return loadUsers(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User> users)? loadUsers,
    TResult? Function(bool isLoading)? loadEvent,
    TResult? Function(List<bool> toggleState)? switchToggleButton,
    TResult? Function(List<int> likeUserState)? likeUserEvent,
  }) {
    return loadUsers?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User> users)? loadUsers,
    TResult Function(bool isLoading)? loadEvent,
    TResult Function(List<bool> toggleState)? switchToggleButton,
    TResult Function(List<int> likeUserState)? likeUserEvent,
    required TResult orElse(),
  }) {
    if (loadUsers != null) {
      return loadUsers(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(LoadEvent value) loadEvent,
    required TResult Function(SwitchToggleButton value) switchToggleButton,
    required TResult Function(LikeUserEvent value) likeUserEvent,
  }) {
    return loadUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(LoadEvent value)? loadEvent,
    TResult? Function(SwitchToggleButton value)? switchToggleButton,
    TResult? Function(LikeUserEvent value)? likeUserEvent,
  }) {
    return loadUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(LoadEvent value)? loadEvent,
    TResult Function(SwitchToggleButton value)? switchToggleButton,
    TResult Function(LikeUserEvent value)? likeUserEvent,
    required TResult orElse(),
  }) {
    if (loadUsers != null) {
      return loadUsers(this);
    }
    return orElse();
  }
}

abstract class LoadUsers implements UsersEvent {
  const factory LoadUsers(final List<User> users) = _$LoadUsers;

  List<User> get users;
  @JsonKey(ignore: true)
  _$$LoadUsersCopyWith<_$LoadUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadEventCopyWith<$Res> {
  factory _$$LoadEventCopyWith(
          _$LoadEvent value, $Res Function(_$LoadEvent) then) =
      __$$LoadEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadEventCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$LoadEvent>
    implements _$$LoadEventCopyWith<$Res> {
  __$$LoadEventCopyWithImpl(
      _$LoadEvent _value, $Res Function(_$LoadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$LoadEvent(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadEvent implements LoadEvent {
  const _$LoadEvent(this.isLoading);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'UsersEvent.loadEvent(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadEvent &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadEventCopyWith<_$LoadEvent> get copyWith =>
      __$$LoadEventCopyWithImpl<_$LoadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<User> users) loadUsers,
    required TResult Function(bool isLoading) loadEvent,
    required TResult Function(List<bool> toggleState) switchToggleButton,
    required TResult Function(List<int> likeUserState) likeUserEvent,
  }) {
    return loadEvent(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User> users)? loadUsers,
    TResult? Function(bool isLoading)? loadEvent,
    TResult? Function(List<bool> toggleState)? switchToggleButton,
    TResult? Function(List<int> likeUserState)? likeUserEvent,
  }) {
    return loadEvent?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User> users)? loadUsers,
    TResult Function(bool isLoading)? loadEvent,
    TResult Function(List<bool> toggleState)? switchToggleButton,
    TResult Function(List<int> likeUserState)? likeUserEvent,
    required TResult orElse(),
  }) {
    if (loadEvent != null) {
      return loadEvent(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(LoadEvent value) loadEvent,
    required TResult Function(SwitchToggleButton value) switchToggleButton,
    required TResult Function(LikeUserEvent value) likeUserEvent,
  }) {
    return loadEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(LoadEvent value)? loadEvent,
    TResult? Function(SwitchToggleButton value)? switchToggleButton,
    TResult? Function(LikeUserEvent value)? likeUserEvent,
  }) {
    return loadEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(LoadEvent value)? loadEvent,
    TResult Function(SwitchToggleButton value)? switchToggleButton,
    TResult Function(LikeUserEvent value)? likeUserEvent,
    required TResult orElse(),
  }) {
    if (loadEvent != null) {
      return loadEvent(this);
    }
    return orElse();
  }
}

abstract class LoadEvent implements UsersEvent {
  const factory LoadEvent(final bool isLoading) = _$LoadEvent;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$LoadEventCopyWith<_$LoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchToggleButtonCopyWith<$Res> {
  factory _$$SwitchToggleButtonCopyWith(_$SwitchToggleButton value,
          $Res Function(_$SwitchToggleButton) then) =
      __$$SwitchToggleButtonCopyWithImpl<$Res>;
  @useResult
  $Res call({List<bool> toggleState});
}

/// @nodoc
class __$$SwitchToggleButtonCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$SwitchToggleButton>
    implements _$$SwitchToggleButtonCopyWith<$Res> {
  __$$SwitchToggleButtonCopyWithImpl(
      _$SwitchToggleButton _value, $Res Function(_$SwitchToggleButton) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toggleState = null,
  }) {
    return _then(_$SwitchToggleButton(
      null == toggleState
          ? _value._toggleState
          : toggleState // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc

class _$SwitchToggleButton implements SwitchToggleButton {
  const _$SwitchToggleButton(final List<bool> toggleState)
      : _toggleState = toggleState;

  final List<bool> _toggleState;
  @override
  List<bool> get toggleState {
    if (_toggleState is EqualUnmodifiableListView) return _toggleState;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toggleState);
  }

  @override
  String toString() {
    return 'UsersEvent.switchToggleButton(toggleState: $toggleState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchToggleButton &&
            const DeepCollectionEquality()
                .equals(other._toggleState, _toggleState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_toggleState));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchToggleButtonCopyWith<_$SwitchToggleButton> get copyWith =>
      __$$SwitchToggleButtonCopyWithImpl<_$SwitchToggleButton>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<User> users) loadUsers,
    required TResult Function(bool isLoading) loadEvent,
    required TResult Function(List<bool> toggleState) switchToggleButton,
    required TResult Function(List<int> likeUserState) likeUserEvent,
  }) {
    return switchToggleButton(toggleState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User> users)? loadUsers,
    TResult? Function(bool isLoading)? loadEvent,
    TResult? Function(List<bool> toggleState)? switchToggleButton,
    TResult? Function(List<int> likeUserState)? likeUserEvent,
  }) {
    return switchToggleButton?.call(toggleState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User> users)? loadUsers,
    TResult Function(bool isLoading)? loadEvent,
    TResult Function(List<bool> toggleState)? switchToggleButton,
    TResult Function(List<int> likeUserState)? likeUserEvent,
    required TResult orElse(),
  }) {
    if (switchToggleButton != null) {
      return switchToggleButton(toggleState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(LoadEvent value) loadEvent,
    required TResult Function(SwitchToggleButton value) switchToggleButton,
    required TResult Function(LikeUserEvent value) likeUserEvent,
  }) {
    return switchToggleButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(LoadEvent value)? loadEvent,
    TResult? Function(SwitchToggleButton value)? switchToggleButton,
    TResult? Function(LikeUserEvent value)? likeUserEvent,
  }) {
    return switchToggleButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(LoadEvent value)? loadEvent,
    TResult Function(SwitchToggleButton value)? switchToggleButton,
    TResult Function(LikeUserEvent value)? likeUserEvent,
    required TResult orElse(),
  }) {
    if (switchToggleButton != null) {
      return switchToggleButton(this);
    }
    return orElse();
  }
}

abstract class SwitchToggleButton implements UsersEvent {
  const factory SwitchToggleButton(final List<bool> toggleState) =
      _$SwitchToggleButton;

  List<bool> get toggleState;
  @JsonKey(ignore: true)
  _$$SwitchToggleButtonCopyWith<_$SwitchToggleButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeUserEventCopyWith<$Res> {
  factory _$$LikeUserEventCopyWith(
          _$LikeUserEvent value, $Res Function(_$LikeUserEvent) then) =
      __$$LikeUserEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> likeUserState});
}

/// @nodoc
class __$$LikeUserEventCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$LikeUserEvent>
    implements _$$LikeUserEventCopyWith<$Res> {
  __$$LikeUserEventCopyWithImpl(
      _$LikeUserEvent _value, $Res Function(_$LikeUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likeUserState = null,
  }) {
    return _then(_$LikeUserEvent(
      null == likeUserState
          ? _value._likeUserState
          : likeUserState // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$LikeUserEvent implements LikeUserEvent {
  const _$LikeUserEvent(final List<int> likeUserState)
      : _likeUserState = likeUserState;

  final List<int> _likeUserState;
  @override
  List<int> get likeUserState {
    if (_likeUserState is EqualUnmodifiableListView) return _likeUserState;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likeUserState);
  }

  @override
  String toString() {
    return 'UsersEvent.likeUserEvent(likeUserState: $likeUserState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeUserEvent &&
            const DeepCollectionEquality()
                .equals(other._likeUserState, _likeUserState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_likeUserState));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeUserEventCopyWith<_$LikeUserEvent> get copyWith =>
      __$$LikeUserEventCopyWithImpl<_$LikeUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<User> users) loadUsers,
    required TResult Function(bool isLoading) loadEvent,
    required TResult Function(List<bool> toggleState) switchToggleButton,
    required TResult Function(List<int> likeUserState) likeUserEvent,
  }) {
    return likeUserEvent(likeUserState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User> users)? loadUsers,
    TResult? Function(bool isLoading)? loadEvent,
    TResult? Function(List<bool> toggleState)? switchToggleButton,
    TResult? Function(List<int> likeUserState)? likeUserEvent,
  }) {
    return likeUserEvent?.call(likeUserState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User> users)? loadUsers,
    TResult Function(bool isLoading)? loadEvent,
    TResult Function(List<bool> toggleState)? switchToggleButton,
    TResult Function(List<int> likeUserState)? likeUserEvent,
    required TResult orElse(),
  }) {
    if (likeUserEvent != null) {
      return likeUserEvent(likeUserState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(LoadEvent value) loadEvent,
    required TResult Function(SwitchToggleButton value) switchToggleButton,
    required TResult Function(LikeUserEvent value) likeUserEvent,
  }) {
    return likeUserEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(LoadEvent value)? loadEvent,
    TResult? Function(SwitchToggleButton value)? switchToggleButton,
    TResult? Function(LikeUserEvent value)? likeUserEvent,
  }) {
    return likeUserEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(LoadEvent value)? loadEvent,
    TResult Function(SwitchToggleButton value)? switchToggleButton,
    TResult Function(LikeUserEvent value)? likeUserEvent,
    required TResult orElse(),
  }) {
    if (likeUserEvent != null) {
      return likeUserEvent(this);
    }
    return orElse();
  }
}

abstract class LikeUserEvent implements UsersEvent {
  const factory LikeUserEvent(final List<int> likeUserState) = _$LikeUserEvent;

  List<int> get likeUserState;
  @JsonKey(ignore: true)
  _$$LikeUserEventCopyWith<_$LikeUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersState {
  List<User> get users => throw _privateConstructorUsedError;
  bool get event => throw _privateConstructorUsedError;
  List<bool> get togglesState => throw _privateConstructorUsedError;
  List<int> get likeUserState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersStateCopyWith<UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
  @useResult
  $Res call(
      {List<User> users,
      bool event,
      List<bool> togglesState,
      List<int> likeUserState});
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? event = null,
    Object? togglesState = null,
    Object? likeUserState = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as bool,
      togglesState: null == togglesState
          ? _value.togglesState
          : togglesState // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      likeUserState: null == likeUserState
          ? _value.likeUserState
          : likeUserState // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersStateCopyWith<$Res>
    implements $UsersStateCopyWith<$Res> {
  factory _$$_UsersStateCopyWith(
          _$_UsersState value, $Res Function(_$_UsersState) then) =
      __$$_UsersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<User> users,
      bool event,
      List<bool> togglesState,
      List<int> likeUserState});
}

/// @nodoc
class __$$_UsersStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_UsersState>
    implements _$$_UsersStateCopyWith<$Res> {
  __$$_UsersStateCopyWithImpl(
      _$_UsersState _value, $Res Function(_$_UsersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? event = null,
    Object? togglesState = null,
    Object? likeUserState = null,
  }) {
    return _then(_$_UsersState(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as bool,
      togglesState: null == togglesState
          ? _value._togglesState
          : togglesState // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      likeUserState: null == likeUserState
          ? _value._likeUserState
          : likeUserState // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_UsersState implements _UsersState {
  const _$_UsersState(
      {final List<User> users = const [],
      this.event = false,
      final List<bool> togglesState = const [false, true],
      final List<int> likeUserState = const []})
      : _users = users,
        _togglesState = togglesState,
        _likeUserState = likeUserState;

  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final bool event;
  final List<bool> _togglesState;
  @override
  @JsonKey()
  List<bool> get togglesState {
    if (_togglesState is EqualUnmodifiableListView) return _togglesState;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_togglesState);
  }

  final List<int> _likeUserState;
  @override
  @JsonKey()
  List<int> get likeUserState {
    if (_likeUserState is EqualUnmodifiableListView) return _likeUserState;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likeUserState);
  }

  @override
  String toString() {
    return 'UsersState(users: $users, event: $event, togglesState: $togglesState, likeUserState: $likeUserState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersState &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.event, event) || other.event == event) &&
            const DeepCollectionEquality()
                .equals(other._togglesState, _togglesState) &&
            const DeepCollectionEquality()
                .equals(other._likeUserState, _likeUserState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      event,
      const DeepCollectionEquality().hash(_togglesState),
      const DeepCollectionEquality().hash(_likeUserState));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersStateCopyWith<_$_UsersState> get copyWith =>
      __$$_UsersStateCopyWithImpl<_$_UsersState>(this, _$identity);
}

abstract class _UsersState implements UsersState {
  const factory _UsersState(
      {final List<User> users,
      final bool event,
      final List<bool> togglesState,
      final List<int> likeUserState}) = _$_UsersState;

  @override
  List<User> get users;
  @override
  bool get event;
  @override
  List<bool> get togglesState;
  @override
  List<int> get likeUserState;
  @override
  @JsonKey(ignore: true)
  _$$_UsersStateCopyWith<_$_UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}
