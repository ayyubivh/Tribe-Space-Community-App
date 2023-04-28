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
  String get userName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) databaseFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? databaseFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? databaseFetched,
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

  @JsonKey(ignore: true)
  $DatabaseEventCopyWith<DatabaseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseEventCopyWith<$Res> {
  factory $DatabaseEventCopyWith(
          DatabaseEvent value, $Res Function(DatabaseEvent) then) =
      _$DatabaseEventCopyWithImpl<$Res, DatabaseEvent>;
  @useResult
  $Res call({String userName});
}

/// @nodoc
class _$DatabaseEventCopyWithImpl<$Res, $Val extends DatabaseEvent>
    implements $DatabaseEventCopyWith<$Res> {
  _$DatabaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatabaseFetchedCopyWith<$Res>
    implements $DatabaseEventCopyWith<$Res> {
  factory _$$DatabaseFetchedCopyWith(
          _$DatabaseFetched value, $Res Function(_$DatabaseFetched) then) =
      __$$DatabaseFetchedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$DatabaseFetchedCopyWithImpl<$Res>
    extends _$DatabaseEventCopyWithImpl<$Res, _$DatabaseFetched>
    implements _$$DatabaseFetchedCopyWith<$Res> {
  __$$DatabaseFetchedCopyWithImpl(
      _$DatabaseFetched _value, $Res Function(_$DatabaseFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$DatabaseFetched(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DatabaseFetched implements DatabaseFetched {
  const _$DatabaseFetched({required this.userName});

  @override
  final String userName;

  @override
  String toString() {
    return 'DatabaseEvent.databaseFetched(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseFetched &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseFetchedCopyWith<_$DatabaseFetched> get copyWith =>
      __$$DatabaseFetchedCopyWithImpl<_$DatabaseFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) databaseFetched,
  }) {
    return databaseFetched(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? databaseFetched,
  }) {
    return databaseFetched?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? databaseFetched,
    required TResult orElse(),
  }) {
    if (databaseFetched != null) {
      return databaseFetched(userName);
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
  const factory DatabaseFetched({required final String userName}) =
      _$DatabaseFetched;

  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$DatabaseFetchedCopyWith<_$DatabaseFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DatabaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() databaseError,
    required TResult Function(String userName, List<dynamic> listOfListUserData)
        databaseSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? databaseError,
    TResult? Function(String userName, List<dynamic> listOfListUserData)?
        databaseSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? databaseError,
    TResult Function(String userName, List<dynamic> listOfListUserData)?
        databaseSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(DatabaseSuccess value) databaseSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(DatabaseError value)? databaseError,
    TResult? Function(DatabaseSuccess value)? databaseSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(DatabaseSuccess value)? databaseSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseStateCopyWith<$Res> {
  factory $DatabaseStateCopyWith(
          DatabaseState value, $Res Function(DatabaseState) then) =
      _$DatabaseStateCopyWithImpl<$Res, DatabaseState>;
}

/// @nodoc
class _$DatabaseStateCopyWithImpl<$Res, $Val extends DatabaseState>
    implements $DatabaseStateCopyWith<$Res> {
  _$DatabaseStateCopyWithImpl(this._value, this._then);

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
    extends _$DatabaseStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'DatabaseState.initial()';
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
    required TResult Function() databaseError,
    required TResult Function(String userName, List<dynamic> listOfListUserData)
        databaseSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? databaseError,
    TResult? Function(String userName, List<dynamic> listOfListUserData)?
        databaseSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? databaseError,
    TResult Function(String userName, List<dynamic> listOfListUserData)?
        databaseSuccess,
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
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(DatabaseSuccess value) databaseSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(DatabaseError value)? databaseError,
    TResult? Function(DatabaseSuccess value)? databaseSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(DatabaseSuccess value)? databaseSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DatabaseState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$DatabaseErrorCopyWith<$Res> {
  factory _$$DatabaseErrorCopyWith(
          _$DatabaseError value, $Res Function(_$DatabaseError) then) =
      __$$DatabaseErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DatabaseErrorCopyWithImpl<$Res>
    extends _$DatabaseStateCopyWithImpl<$Res, _$DatabaseError>
    implements _$$DatabaseErrorCopyWith<$Res> {
  __$$DatabaseErrorCopyWithImpl(
      _$DatabaseError _value, $Res Function(_$DatabaseError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DatabaseError implements DatabaseError {
  const _$DatabaseError();

  @override
  String toString() {
    return 'DatabaseState.databaseError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DatabaseError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() databaseError,
    required TResult Function(String userName, List<dynamic> listOfListUserData)
        databaseSuccess,
  }) {
    return databaseError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? databaseError,
    TResult? Function(String userName, List<dynamic> listOfListUserData)?
        databaseSuccess,
  }) {
    return databaseError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? databaseError,
    TResult Function(String userName, List<dynamic> listOfListUserData)?
        databaseSuccess,
    required TResult orElse(),
  }) {
    if (databaseError != null) {
      return databaseError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(DatabaseSuccess value) databaseSuccess,
  }) {
    return databaseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(DatabaseError value)? databaseError,
    TResult? Function(DatabaseSuccess value)? databaseSuccess,
  }) {
    return databaseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(DatabaseSuccess value)? databaseSuccess,
    required TResult orElse(),
  }) {
    if (databaseError != null) {
      return databaseError(this);
    }
    return orElse();
  }
}

abstract class DatabaseError implements DatabaseState {
  const factory DatabaseError() = _$DatabaseError;
}

/// @nodoc
abstract class _$$DatabaseSuccessCopyWith<$Res> {
  factory _$$DatabaseSuccessCopyWith(
          _$DatabaseSuccess value, $Res Function(_$DatabaseSuccess) then) =
      __$$DatabaseSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName, List<dynamic> listOfListUserData});
}

/// @nodoc
class __$$DatabaseSuccessCopyWithImpl<$Res>
    extends _$DatabaseStateCopyWithImpl<$Res, _$DatabaseSuccess>
    implements _$$DatabaseSuccessCopyWith<$Res> {
  __$$DatabaseSuccessCopyWithImpl(
      _$DatabaseSuccess _value, $Res Function(_$DatabaseSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? listOfListUserData = null,
  }) {
    return _then(_$DatabaseSuccess(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      listOfListUserData: null == listOfListUserData
          ? _value._listOfListUserData
          : listOfListUserData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$DatabaseSuccess implements DatabaseSuccess {
  const _$DatabaseSuccess(
      {required this.userName, required final List<dynamic> listOfListUserData})
      : _listOfListUserData = listOfListUserData;

  @override
  final String userName;
  final List<dynamic> _listOfListUserData;
  @override
  List<dynamic> get listOfListUserData {
    if (_listOfListUserData is EqualUnmodifiableListView)
      return _listOfListUserData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfListUserData);
  }

  @override
  String toString() {
    return 'DatabaseState.databaseSuccess(userName: $userName, listOfListUserData: $listOfListUserData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseSuccess &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            const DeepCollectionEquality()
                .equals(other._listOfListUserData, _listOfListUserData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName,
      const DeepCollectionEquality().hash(_listOfListUserData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseSuccessCopyWith<_$DatabaseSuccess> get copyWith =>
      __$$DatabaseSuccessCopyWithImpl<_$DatabaseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() databaseError,
    required TResult Function(String userName, List<dynamic> listOfListUserData)
        databaseSuccess,
  }) {
    return databaseSuccess(userName, listOfListUserData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? databaseError,
    TResult? Function(String userName, List<dynamic> listOfListUserData)?
        databaseSuccess,
  }) {
    return databaseSuccess?.call(userName, listOfListUserData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? databaseError,
    TResult Function(String userName, List<dynamic> listOfListUserData)?
        databaseSuccess,
    required TResult orElse(),
  }) {
    if (databaseSuccess != null) {
      return databaseSuccess(userName, listOfListUserData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(DatabaseSuccess value) databaseSuccess,
  }) {
    return databaseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(DatabaseError value)? databaseError,
    TResult? Function(DatabaseSuccess value)? databaseSuccess,
  }) {
    return databaseSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(DatabaseSuccess value)? databaseSuccess,
    required TResult orElse(),
  }) {
    if (databaseSuccess != null) {
      return databaseSuccess(this);
    }
    return orElse();
  }
}

abstract class DatabaseSuccess implements DatabaseState {
  const factory DatabaseSuccess(
      {required final String userName,
      required final List<dynamic> listOfListUserData}) = _$DatabaseSuccess;

  String get userName;
  List<dynamic> get listOfListUserData;
  @JsonKey(ignore: true)
  _$$DatabaseSuccessCopyWith<_$DatabaseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
