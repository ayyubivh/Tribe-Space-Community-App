// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentEvent {
  String get postId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get profilePic => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, String text, String uid,
            String name, String profilePic)
        setCommentEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, String text, String uid, String name,
            String profilePic)?
        setCommentEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, String text, String uid, String name,
            String profilePic)?
        setCommentEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetCommentEvent value) setCommentEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetCommentEvent value)? setCommentEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetCommentEvent value)? setCommentEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentEventCopyWith<CommentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEventCopyWith<$Res> {
  factory $CommentEventCopyWith(
          CommentEvent value, $Res Function(CommentEvent) then) =
      _$CommentEventCopyWithImpl<$Res, CommentEvent>;
  @useResult
  $Res call(
      {String postId, String text, String uid, String name, String profilePic});
}

/// @nodoc
class _$CommentEventCopyWithImpl<$Res, $Val extends CommentEvent>
    implements $CommentEventCopyWith<$Res> {
  _$CommentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? text = null,
    Object? uid = null,
    Object? name = null,
    Object? profilePic = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: null == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetCommentEventCopyWith<$Res>
    implements $CommentEventCopyWith<$Res> {
  factory _$$SetCommentEventCopyWith(
          _$SetCommentEvent value, $Res Function(_$SetCommentEvent) then) =
      __$$SetCommentEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String postId, String text, String uid, String name, String profilePic});
}

/// @nodoc
class __$$SetCommentEventCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$SetCommentEvent>
    implements _$$SetCommentEventCopyWith<$Res> {
  __$$SetCommentEventCopyWithImpl(
      _$SetCommentEvent _value, $Res Function(_$SetCommentEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? text = null,
    Object? uid = null,
    Object? name = null,
    Object? profilePic = null,
  }) {
    return _then(_$SetCommentEvent(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: null == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetCommentEvent
    with DiagnosticableTreeMixin
    implements SetCommentEvent {
  const _$SetCommentEvent(
      {required this.postId,
      required this.text,
      required this.uid,
      required this.name,
      required this.profilePic});

  @override
  final String postId;
  @override
  final String text;
  @override
  final String uid;
  @override
  final String name;
  @override
  final String profilePic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommentEvent.setCommentEvent(postId: $postId, text: $text, uid: $uid, name: $name, profilePic: $profilePic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommentEvent.setCommentEvent'))
      ..add(DiagnosticsProperty('postId', postId))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('profilePic', profilePic));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCommentEvent &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, postId, text, uid, name, profilePic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCommentEventCopyWith<_$SetCommentEvent> get copyWith =>
      __$$SetCommentEventCopyWithImpl<_$SetCommentEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, String text, String uid,
            String name, String profilePic)
        setCommentEvent,
  }) {
    return setCommentEvent(postId, text, uid, name, profilePic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, String text, String uid, String name,
            String profilePic)?
        setCommentEvent,
  }) {
    return setCommentEvent?.call(postId, text, uid, name, profilePic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, String text, String uid, String name,
            String profilePic)?
        setCommentEvent,
    required TResult orElse(),
  }) {
    if (setCommentEvent != null) {
      return setCommentEvent(postId, text, uid, name, profilePic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetCommentEvent value) setCommentEvent,
  }) {
    return setCommentEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetCommentEvent value)? setCommentEvent,
  }) {
    return setCommentEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetCommentEvent value)? setCommentEvent,
    required TResult orElse(),
  }) {
    if (setCommentEvent != null) {
      return setCommentEvent(this);
    }
    return orElse();
  }
}

abstract class SetCommentEvent implements CommentEvent {
  const factory SetCommentEvent(
      {required final String postId,
      required final String text,
      required final String uid,
      required final String name,
      required final String profilePic}) = _$SetCommentEvent;

  @override
  String get postId;
  @override
  String get text;
  @override
  String get uid;
  @override
  String get name;
  @override
  String get profilePic;
  @override
  @JsonKey(ignore: true)
  _$$SetCommentEventCopyWith<_$SetCommentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get commentSuccess => throw _privateConstructorUsedError;
  bool get commentFailure => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentStateCopyWith<CommentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentStateCopyWith<$Res> {
  factory $CommentStateCopyWith(
          CommentState value, $Res Function(CommentState) then) =
      _$CommentStateCopyWithImpl<$Res, CommentState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool commentSuccess,
      bool commentFailure,
      String errorMessage});
}

/// @nodoc
class _$CommentStateCopyWithImpl<$Res, $Val extends CommentState>
    implements $CommentStateCopyWith<$Res> {
  _$CommentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? commentSuccess = null,
    Object? commentFailure = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      commentSuccess: null == commentSuccess
          ? _value.commentSuccess
          : commentSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      commentFailure: null == commentFailure
          ? _value.commentFailure
          : commentFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentStateCopyWith<$Res>
    implements $CommentStateCopyWith<$Res> {
  factory _$$_CommentStateCopyWith(
          _$_CommentState value, $Res Function(_$_CommentState) then) =
      __$$_CommentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool commentSuccess,
      bool commentFailure,
      String errorMessage});
}

/// @nodoc
class __$$_CommentStateCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$_CommentState>
    implements _$$_CommentStateCopyWith<$Res> {
  __$$_CommentStateCopyWithImpl(
      _$_CommentState _value, $Res Function(_$_CommentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? commentSuccess = null,
    Object? commentFailure = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_CommentState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      commentSuccess: null == commentSuccess
          ? _value.commentSuccess
          : commentSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      commentFailure: null == commentFailure
          ? _value.commentFailure
          : commentFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommentState with DiagnosticableTreeMixin implements _CommentState {
  const _$_CommentState(
      {required this.isLoading,
      required this.commentSuccess,
      required this.commentFailure,
      required this.errorMessage});

  @override
  final bool isLoading;
  @override
  final bool commentSuccess;
  @override
  final bool commentFailure;
  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommentState(isLoading: $isLoading, commentSuccess: $commentSuccess, commentFailure: $commentFailure, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommentState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('commentSuccess', commentSuccess))
      ..add(DiagnosticsProperty('commentFailure', commentFailure))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.commentSuccess, commentSuccess) ||
                other.commentSuccess == commentSuccess) &&
            (identical(other.commentFailure, commentFailure) ||
                other.commentFailure == commentFailure) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, commentSuccess, commentFailure, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentStateCopyWith<_$_CommentState> get copyWith =>
      __$$_CommentStateCopyWithImpl<_$_CommentState>(this, _$identity);
}

abstract class _CommentState implements CommentState {
  const factory _CommentState(
      {required final bool isLoading,
      required final bool commentSuccess,
      required final bool commentFailure,
      required final String errorMessage}) = _$_CommentState;

  @override
  bool get isLoading;
  @override
  bool get commentSuccess;
  @override
  bool get commentFailure;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_CommentStateCopyWith<_$_CommentState> get copyWith =>
      throw _privateConstructorUsedError;
}
