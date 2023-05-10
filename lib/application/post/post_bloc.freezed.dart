// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostEvent {
  String get description => throw _privateConstructorUsedError;
  Uint8List get file => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description, Uint8List file, String uid,
            String userName, String profileImage)
        uploadPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String description, Uint8List file, String uid,
            String userName, String profileImage)?
        uploadPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description, Uint8List file, String uid,
            String userName, String profileImage)?
        uploadPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadPostEvent value) uploadPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadPostEvent value)? uploadPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadPostEvent value)? uploadPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostEventCopyWith<PostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res, PostEvent>;
  @useResult
  $Res call(
      {String description,
      Uint8List file,
      String uid,
      String userName,
      String profileImage});
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res, $Val extends PostEvent>
    implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? file = null,
    Object? uid = null,
    Object? userName = null,
    Object? profileImage = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadPostEventCopyWith<$Res>
    implements $PostEventCopyWith<$Res> {
  factory _$$UploadPostEventCopyWith(
          _$UploadPostEvent value, $Res Function(_$UploadPostEvent) then) =
      __$$UploadPostEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      Uint8List file,
      String uid,
      String userName,
      String profileImage});
}

/// @nodoc
class __$$UploadPostEventCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$UploadPostEvent>
    implements _$$UploadPostEventCopyWith<$Res> {
  __$$UploadPostEventCopyWithImpl(
      _$UploadPostEvent _value, $Res Function(_$UploadPostEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? file = null,
    Object? uid = null,
    Object? userName = null,
    Object? profileImage = null,
  }) {
    return _then(_$UploadPostEvent(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadPostEvent implements UploadPostEvent {
  const _$UploadPostEvent(
      {required this.description,
      required this.file,
      required this.uid,
      required this.userName,
      required this.profileImage});

  @override
  final String description;
  @override
  final Uint8List file;
  @override
  final String uid;
  @override
  final String userName;
  @override
  final String profileImage;

  @override
  String toString() {
    return 'PostEvent.uploadPost(description: $description, file: $file, uid: $uid, userName: $userName, profileImage: $profileImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadPostEvent &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.file, file) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(file), uid, userName, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadPostEventCopyWith<_$UploadPostEvent> get copyWith =>
      __$$UploadPostEventCopyWithImpl<_$UploadPostEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description, Uint8List file, String uid,
            String userName, String profileImage)
        uploadPost,
  }) {
    return uploadPost(description, file, uid, userName, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String description, Uint8List file, String uid,
            String userName, String profileImage)?
        uploadPost,
  }) {
    return uploadPost?.call(description, file, uid, userName, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description, Uint8List file, String uid,
            String userName, String profileImage)?
        uploadPost,
    required TResult orElse(),
  }) {
    if (uploadPost != null) {
      return uploadPost(description, file, uid, userName, profileImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadPostEvent value) uploadPost,
  }) {
    return uploadPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadPostEvent value)? uploadPost,
  }) {
    return uploadPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadPostEvent value)? uploadPost,
    required TResult orElse(),
  }) {
    if (uploadPost != null) {
      return uploadPost(this);
    }
    return orElse();
  }
}

abstract class UploadPostEvent implements PostEvent {
  const factory UploadPostEvent(
      {required final String description,
      required final Uint8List file,
      required final String uid,
      required final String userName,
      required final String profileImage}) = _$UploadPostEvent;

  @override
  String get description;
  @override
  Uint8List get file;
  @override
  String get uid;
  @override
  String get userName;
  @override
  String get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$UploadPostEventCopyWith<_$UploadPostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get postUploadSuccess => throw _privateConstructorUsedError;
  bool get postUploadFailure => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool postUploadSuccess,
      bool postUploadFailure,
      String errorMessage});
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? postUploadSuccess = null,
    Object? postUploadFailure = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      postUploadSuccess: null == postUploadSuccess
          ? _value.postUploadSuccess
          : postUploadSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      postUploadFailure: null == postUploadFailure
          ? _value.postUploadFailure
          : postUploadFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$$_PostStateCopyWith(
          _$_PostState value, $Res Function(_$_PostState) then) =
      __$$_PostStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool postUploadSuccess,
      bool postUploadFailure,
      String errorMessage});
}

/// @nodoc
class __$$_PostStateCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$_PostState>
    implements _$$_PostStateCopyWith<$Res> {
  __$$_PostStateCopyWithImpl(
      _$_PostState _value, $Res Function(_$_PostState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? postUploadSuccess = null,
    Object? postUploadFailure = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_PostState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      postUploadSuccess: null == postUploadSuccess
          ? _value.postUploadSuccess
          : postUploadSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      postUploadFailure: null == postUploadFailure
          ? _value.postUploadFailure
          : postUploadFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostState implements _PostState {
  const _$_PostState(
      {required this.isLoading,
      required this.postUploadSuccess,
      required this.postUploadFailure,
      required this.errorMessage});

  @override
  final bool isLoading;
  @override
  final bool postUploadSuccess;
  @override
  final bool postUploadFailure;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PostState(isLoading: $isLoading, postUploadSuccess: $postUploadSuccess, postUploadFailure: $postUploadFailure, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.postUploadSuccess, postUploadSuccess) ||
                other.postUploadSuccess == postUploadSuccess) &&
            (identical(other.postUploadFailure, postUploadFailure) ||
                other.postUploadFailure == postUploadFailure) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, postUploadSuccess,
      postUploadFailure, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostStateCopyWith<_$_PostState> get copyWith =>
      __$$_PostStateCopyWithImpl<_$_PostState>(this, _$identity);
}

abstract class _PostState implements PostState {
  const factory _PostState(
      {required final bool isLoading,
      required final bool postUploadSuccess,
      required final bool postUploadFailure,
      required final String errorMessage}) = _$_PostState;

  @override
  bool get isLoading;
  @override
  bool get postUploadSuccess;
  @override
  bool get postUploadFailure;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PostStateCopyWith<_$_PostState> get copyWith =>
      throw _privateConstructorUsedError;
}
