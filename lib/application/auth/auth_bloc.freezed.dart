// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authRequested,
    required TResult Function() signout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authRequested,
    TResult? Function()? signout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authRequested,
    TResult Function()? signout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequested value) authRequested,
    required TResult Function(AuthSignOut value) signout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthRequested value)? authRequested,
    TResult? Function(AuthSignOut value)? signout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequested value)? authRequested,
    TResult Function(AuthSignOut value)? signout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthRequestedCopyWith<$Res> {
  factory _$$AuthRequestedCopyWith(
          _$AuthRequested value, $Res Function(_$AuthRequested) then) =
      __$$AuthRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthRequested>
    implements _$$AuthRequestedCopyWith<$Res> {
  __$$AuthRequestedCopyWithImpl(
      _$AuthRequested _value, $Res Function(_$AuthRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthRequested implements AuthRequested {
  const _$AuthRequested();

  @override
  String toString() {
    return 'AuthEvent.authRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authRequested,
    required TResult Function() signout,
  }) {
    return authRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authRequested,
    TResult? Function()? signout,
  }) {
    return authRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authRequested,
    TResult Function()? signout,
    required TResult orElse(),
  }) {
    if (authRequested != null) {
      return authRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequested value) authRequested,
    required TResult Function(AuthSignOut value) signout,
  }) {
    return authRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthRequested value)? authRequested,
    TResult? Function(AuthSignOut value)? signout,
  }) {
    return authRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequested value)? authRequested,
    TResult Function(AuthSignOut value)? signout,
    required TResult orElse(),
  }) {
    if (authRequested != null) {
      return authRequested(this);
    }
    return orElse();
  }
}

abstract class AuthRequested implements AuthEvent {
  const factory AuthRequested() = _$AuthRequested;
}

/// @nodoc
abstract class _$$AuthSignOutCopyWith<$Res> {
  factory _$$AuthSignOutCopyWith(
          _$AuthSignOut value, $Res Function(_$AuthSignOut) then) =
      __$$AuthSignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSignOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignOut>
    implements _$$AuthSignOutCopyWith<$Res> {
  __$$AuthSignOutCopyWithImpl(
      _$AuthSignOut _value, $Res Function(_$AuthSignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthSignOut implements AuthSignOut {
  const _$AuthSignOut();

  @override
  String toString() {
    return 'AuthEvent.signout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authRequested,
    required TResult Function() signout,
  }) {
    return signout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authRequested,
    TResult? Function()? signout,
  }) {
    return signout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authRequested,
    TResult Function()? signout,
    required TResult orElse(),
  }) {
    if (signout != null) {
      return signout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequested value) authRequested,
    required TResult Function(AuthSignOut value) signout,
  }) {
    return signout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthRequested value)? authRequested,
    TResult? Function(AuthSignOut value)? signout,
  }) {
    return signout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequested value)? authRequested,
    TResult Function(AuthSignOut value)? signout,
    required TResult orElse(),
  }) {
    if (signout != null) {
      return signout(this);
    }
    return orElse();
  }
}

abstract class AuthSignOut implements AuthEvent {
  const factory AuthSignOut() = _$AuthSignOut;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String userName) authenticationSuccess,
    required TResult Function() authenticationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userName)? authenticationSuccess,
    TResult? Function()? authenticationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userName)? authenticationSuccess,
    TResult Function()? authenticationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthenticationSuccess value)
        authenticationSuccess,
    required TResult Function(AuthenticationFailure value)
        authenticationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult? Function(AuthenticationFailure value)? authenticationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult Function(AuthenticationFailure value)? authenticationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String userName) authenticationSuccess,
    required TResult Function() authenticationFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userName)? authenticationSuccess,
    TResult? Function()? authenticationFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userName)? authenticationSuccess,
    TResult Function()? authenticationFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthenticationSuccess value)
        authenticationSuccess,
    required TResult Function(AuthenticationFailure value)
        authenticationFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult? Function(AuthenticationFailure value)? authenticationFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult Function(AuthenticationFailure value)? authenticationFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$AuthenticationSuccessCopyWith<$Res> {
  factory _$$AuthenticationSuccessCopyWith(_$AuthenticationSuccess value,
          $Res Function(_$AuthenticationSuccess) then) =
      __$$AuthenticationSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$AuthenticationSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticationSuccess>
    implements _$$AuthenticationSuccessCopyWith<$Res> {
  __$$AuthenticationSuccessCopyWithImpl(_$AuthenticationSuccess _value,
      $Res Function(_$AuthenticationSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$AuthenticationSuccess(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationSuccess implements AuthenticationSuccess {
  const _$AuthenticationSuccess({required this.userName});

  @override
  final String userName;

  @override
  String toString() {
    return 'AuthState.authenticationSuccess(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSuccess &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSuccessCopyWith<_$AuthenticationSuccess> get copyWith =>
      __$$AuthenticationSuccessCopyWithImpl<_$AuthenticationSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String userName) authenticationSuccess,
    required TResult Function() authenticationFailure,
  }) {
    return authenticationSuccess(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userName)? authenticationSuccess,
    TResult? Function()? authenticationFailure,
  }) {
    return authenticationSuccess?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userName)? authenticationSuccess,
    TResult Function()? authenticationFailure,
    required TResult orElse(),
  }) {
    if (authenticationSuccess != null) {
      return authenticationSuccess(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthenticationSuccess value)
        authenticationSuccess,
    required TResult Function(AuthenticationFailure value)
        authenticationFailure,
  }) {
    return authenticationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult? Function(AuthenticationFailure value)? authenticationFailure,
  }) {
    return authenticationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult Function(AuthenticationFailure value)? authenticationFailure,
    required TResult orElse(),
  }) {
    if (authenticationSuccess != null) {
      return authenticationSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthenticationSuccess implements AuthState {
  const factory AuthenticationSuccess({required final String userName}) =
      _$AuthenticationSuccess;

  String get userName;
  @JsonKey(ignore: true)
  _$$AuthenticationSuccessCopyWith<_$AuthenticationSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationFailureCopyWith<$Res> {
  factory _$$AuthenticationFailureCopyWith(_$AuthenticationFailure value,
          $Res Function(_$AuthenticationFailure) then) =
      __$$AuthenticationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationFailureCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticationFailure>
    implements _$$AuthenticationFailureCopyWith<$Res> {
  __$$AuthenticationFailureCopyWithImpl(_$AuthenticationFailure _value,
      $Res Function(_$AuthenticationFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationFailure implements AuthenticationFailure {
  const _$AuthenticationFailure();

  @override
  String toString() {
    return 'AuthState.authenticationFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticationFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String userName) authenticationSuccess,
    required TResult Function() authenticationFailure,
  }) {
    return authenticationFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userName)? authenticationSuccess,
    TResult? Function()? authenticationFailure,
  }) {
    return authenticationFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userName)? authenticationSuccess,
    TResult Function()? authenticationFailure,
    required TResult orElse(),
  }) {
    if (authenticationFailure != null) {
      return authenticationFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthenticationSuccess value)
        authenticationSuccess,
    required TResult Function(AuthenticationFailure value)
        authenticationFailure,
  }) {
    return authenticationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult? Function(AuthenticationFailure value)? authenticationFailure,
  }) {
    return authenticationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthenticationSuccess value)? authenticationSuccess,
    TResult Function(AuthenticationFailure value)? authenticationFailure,
    required TResult orElse(),
  }) {
    if (authenticationFailure != null) {
      return authenticationFailure(this);
    }
    return orElse();
  }
}

abstract class AuthenticationFailure implements AuthState {
  const factory AuthenticationFailure() = _$AuthenticationFailure;
}
