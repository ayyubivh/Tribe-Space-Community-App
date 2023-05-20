// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchVal) started,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchVal)? started,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchVal)? started,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageSearchEventCopyWith<$Res> {
  factory $MessageSearchEventCopyWith(
          MessageSearchEvent value, $Res Function(MessageSearchEvent) then) =
      _$MessageSearchEventCopyWithImpl<$Res, MessageSearchEvent>;
}

/// @nodoc
class _$MessageSearchEventCopyWithImpl<$Res, $Val extends MessageSearchEvent>
    implements $MessageSearchEventCopyWith<$Res> {
  _$MessageSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchVal});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$MessageSearchEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchVal = null,
  }) {
    return _then(_$Started(
      searchVal: null == searchVal
          ? _value.searchVal
          : searchVal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Started implements Started {
  const _$Started({required this.searchVal});

  @override
  final String searchVal;

  @override
  String toString() {
    return 'MessageSearchEvent.started(searchVal: $searchVal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            (identical(other.searchVal, searchVal) ||
                other.searchVal == searchVal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchVal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchVal) started,
    required TResult Function() empty,
  }) {
    return started(searchVal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchVal)? started,
    TResult? Function()? empty,
  }) {
    return started?.call(searchVal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchVal)? started,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(searchVal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Empty value) empty,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Empty value)? empty,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements MessageSearchEvent {
  const factory Started({required final String searchVal}) = _$Started;

  String get searchVal;
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<$Res> {
  factory _$$EmptyCopyWith(_$Empty value, $Res Function(_$Empty) then) =
      __$$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyCopyWithImpl<$Res>
    extends _$MessageSearchEventCopyWithImpl<$Res, _$Empty>
    implements _$$EmptyCopyWith<$Res> {
  __$$EmptyCopyWithImpl(_$Empty _value, $Res Function(_$Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Empty implements Empty {
  const _$Empty();

  @override
  String toString() {
    return 'MessageSearchEvent.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchVal) started,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchVal)? started,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchVal)? started,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements MessageSearchEvent {
  const factory Empty() = _$Empty;
}

/// @nodoc
mixin _$MessageSearchState {
  String? get searchValue => throw _privateConstructorUsedError;
  StreamController<bool>? get btnClearController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageSearchStateCopyWith<MessageSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageSearchStateCopyWith<$Res> {
  factory $MessageSearchStateCopyWith(
          MessageSearchState value, $Res Function(MessageSearchState) then) =
      _$MessageSearchStateCopyWithImpl<$Res, MessageSearchState>;
  @useResult
  $Res call({String? searchValue, StreamController<bool>? btnClearController});
}

/// @nodoc
class _$MessageSearchStateCopyWithImpl<$Res, $Val extends MessageSearchState>
    implements $MessageSearchStateCopyWith<$Res> {
  _$MessageSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchValue = freezed,
    Object? btnClearController = freezed,
  }) {
    return _then(_value.copyWith(
      searchValue: freezed == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String?,
      btnClearController: freezed == btnClearController
          ? _value.btnClearController
          : btnClearController // ignore: cast_nullable_to_non_nullable
              as StreamController<bool>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $MessageSearchStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? searchValue, StreamController<bool>? btnClearController});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MessageSearchStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchValue = freezed,
    Object? btnClearController = freezed,
  }) {
    return _then(_$_Initial(
      searchValue: freezed == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String?,
      btnClearController: freezed == btnClearController
          ? _value.btnClearController
          : btnClearController // ignore: cast_nullable_to_non_nullable
              as StreamController<bool>?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.searchValue, this.btnClearController});

  @override
  final String? searchValue;
  @override
  final StreamController<bool>? btnClearController;

  @override
  String toString() {
    return 'MessageSearchState(searchValue: $searchValue, btnClearController: $btnClearController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue) &&
            (identical(other.btnClearController, btnClearController) ||
                other.btnClearController == btnClearController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchValue, btnClearController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements MessageSearchState {
  const factory _Initial(
      {final String? searchValue,
      final StreamController<bool>? btnClearController}) = _$_Initial;

  @override
  String? get searchValue;
  @override
  StreamController<bool>? get btnClearController;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
