// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DatabaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() databaseFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? databaseFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? databaseFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFetched value) databaseFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFetched value)? databaseFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFetched value)? databaseFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseEventCopyWith<$Res> {
  factory $DatabaseEventCopyWith(
          DatabaseEvent value, $Res Function(DatabaseEvent) then) =
      _$DatabaseEventCopyWithImpl<$Res, DatabaseEvent>;
}

/// @nodoc
class _$DatabaseEventCopyWithImpl<$Res, $Val extends DatabaseEvent>
    implements $DatabaseEventCopyWith<$Res> {
  _$DatabaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DatabaseFetchedCopyWith<$Res> {
  factory _$$DatabaseFetchedCopyWith(
          _$DatabaseFetched value, $Res Function(_$DatabaseFetched) then) =
      __$$DatabaseFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DatabaseFetchedCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$DatabaseFetched>
    implements _$$DatabaseFetchedCopyWith<$Res> {
  __$$DatabaseFetchedCopyWithImpl(
      _$DatabaseFetched _value, $Res Function(_$DatabaseFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DatabaseFetched implements DatabaseFetched {
  const _$DatabaseFetched();

  @override
  String toString() {
    return 'DatabaseEvent.databaseFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DatabaseFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() databaseFetched,
  }) {
    return databaseFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? databaseFetched,
  }) {
    return databaseFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? databaseFetched,
    required TResult orElse(),
  }) {
    if (databaseFetched != null) {
      return databaseFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFetched value) databaseFetched,
  }) {
    return databaseFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFetched value)? databaseFetched,
  }) {
    return databaseFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFetched value)? databaseFetched,
    required TResult orElse(),
  }) {
    if (databaseFetched != null) {
      return databaseFetched(this);
    }
    return orElse();
  }
}

abstract class DatabaseFetched implements DatabaseEvent {
  const factory DatabaseFetched() = _$DatabaseFetched;
}

/// @nodoc
mixin _$DatabaseState {
  bool get databaseError => throw _privateConstructorUsedError;
  String get userData => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  bool get isUserJoined => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DatabaseStateCopyWith<DatabaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseStateCopyWith<$Res> {
  factory $DatabaseStateCopyWith(
          DatabaseState value, $Res Function(DatabaseState) then) =
      _$DatabaseStateCopyWithImpl<$Res, DatabaseState>;
  @useResult
  $Res call(
      {bool databaseError,
      String userData,
      String userName,
      String email,
      String uid,
      String photoUrl,
      bool isUserJoined});
}

/// @nodoc
class _$DatabaseStateCopyWithImpl<$Res, $Val extends DatabaseState>
    implements $DatabaseStateCopyWith<$Res> {
  _$DatabaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? databaseError = null,
    Object? userData = null,
    Object? userName = null,
    Object? email = null,
    Object? uid = null,
    Object? photoUrl = null,
    Object? isUserJoined = null,
  }) {
    return _then(_value.copyWith(
      databaseError: null == databaseError
          ? _value.databaseError
          : databaseError // ignore: cast_nullable_to_non_nullable
              as bool,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isUserJoined: null == isUserJoined
          ? _value.isUserJoined
          : isUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DatabaseStateCopyWith<$Res>
    implements $DatabaseStateCopyWith<$Res> {
  factory _$$_DatabaseStateCopyWith(
          _$_DatabaseState value, $Res Function(_$_DatabaseState) then) =
      __$$_DatabaseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool databaseError,
      String userData,
      String userName,
      String email,
      String uid,
      String photoUrl,
      bool isUserJoined});
}

/// @nodoc
class __$$_DatabaseStateCopyWithImpl<$Res>
    extends _$DatabaseStateCopyWithImpl<$Res, _$_DatabaseState>
    implements _$$_DatabaseStateCopyWith<$Res> {
  __$$_DatabaseStateCopyWithImpl(
      _$_DatabaseState _value, $Res Function(_$_DatabaseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? databaseError = null,
    Object? userData = null,
    Object? userName = null,
    Object? email = null,
    Object? uid = null,
    Object? photoUrl = null,
    Object? isUserJoined = null,
  }) {
    return _then(_$_DatabaseState(
      databaseError: null == databaseError
          ? _value.databaseError
          : databaseError // ignore: cast_nullable_to_non_nullable
              as bool,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isUserJoined: null == isUserJoined
          ? _value.isUserJoined
          : isUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DatabaseState implements _DatabaseState {
  const _$_DatabaseState(
      {required this.databaseError,
      required this.userData,
      required this.userName,
      required this.email,
      required this.uid,
      required this.photoUrl,
      required this.isUserJoined});

  @override
  final bool databaseError;
  @override
  final String userData;
  @override
  final String userName;
  @override
  final String email;
  @override
  final String uid;
  @override
  final String photoUrl;
  @override
  final bool isUserJoined;

  @override
  String toString() {
    return 'DatabaseState(databaseError: $databaseError, userData: $userData, userName: $userName, email: $email, uid: $uid, photoUrl: $photoUrl, isUserJoined: $isUserJoined)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DatabaseState &&
            (identical(other.databaseError, databaseError) ||
                other.databaseError == databaseError) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.isUserJoined, isUserJoined) ||
                other.isUserJoined == isUserJoined));
  }

  @override
  int get hashCode => Object.hash(runtimeType, databaseError, userData,
      userName, email, uid, photoUrl, isUserJoined);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatabaseStateCopyWith<_$_DatabaseState> get copyWith =>
      __$$_DatabaseStateCopyWithImpl<_$_DatabaseState>(this, _$identity);
}

abstract class _DatabaseState implements DatabaseState {
  const factory _DatabaseState(
      {required final bool databaseError,
      required final String userData,
      required final String userName,
      required final String email,
      required final String uid,
      required final String photoUrl,
      required final bool isUserJoined}) = _$_DatabaseState;

  @override
  bool get databaseError;
  @override
  String get userData;
  @override
  String get userName;
  @override
  String get email;
  @override
  String get uid;
  @override
  String get photoUrl;
  @override
  bool get isUserJoined;
  @override
  @JsonKey(ignore: true)
  _$$_DatabaseStateCopyWith<_$_DatabaseState> get copyWith =>
      throw _privateConstructorUsedError;
}
