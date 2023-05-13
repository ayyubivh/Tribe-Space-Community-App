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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description, Uint8List file, String uid,
            String userName, String profileImage)
        uploadPost,
    required TResult Function(String postId) deletePost,
    required TResult Function(String postId, String uid, List<dynamic> likes)
        likePost,
    required TResult Function(String uid, String followId) followUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String description, Uint8List file, String uid,
            String userName, String profileImage)?
        uploadPost,
    TResult? Function(String postId)? deletePost,
    TResult? Function(String postId, String uid, List<dynamic> likes)? likePost,
    TResult? Function(String uid, String followId)? followUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description, Uint8List file, String uid,
            String userName, String profileImage)?
        uploadPost,
    TResult Function(String postId)? deletePost,
    TResult Function(String postId, String uid, List<dynamic> likes)? likePost,
    TResult Function(String uid, String followId)? followUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadPostEvent value) uploadPost,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(LikepostEvent value) likePost,
    required TResult Function(FollowUserEvent value) followUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadPostEvent value)? uploadPost,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(LikepostEvent value)? likePost,
    TResult? Function(FollowUserEvent value)? followUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadPostEvent value)? uploadPost,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(LikepostEvent value)? likePost,
    TResult Function(FollowUserEvent value)? followUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res, PostEvent>;
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res, $Val extends PostEvent>
    implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UploadPostEventCopyWith<$Res> {
  factory _$$UploadPostEventCopyWith(
          _$UploadPostEvent value, $Res Function(_$UploadPostEvent) then) =
      __$$UploadPostEventCopyWithImpl<$Res>;
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
    required TResult Function(String postId) deletePost,
    required TResult Function(String postId, String uid, List<dynamic> likes)
        likePost,
    required TResult Function(String uid, String followId) followUser,
  }) {
    return uploadPost(description, file, uid, userName, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String description, Uint8List file, String uid,
            String userName, String profileImage)?
        uploadPost,
    TResult? Function(String postId)? deletePost,
    TResult? Function(String postId, String uid, List<dynamic> likes)? likePost,
    TResult? Function(String uid, String followId)? followUser,
  }) {
    return uploadPost?.call(description, file, uid, userName, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description, Uint8List file, String uid,
            String userName, String profileImage)?
        uploadPost,
    TResult Function(String postId)? deletePost,
    TResult Function(String postId, String uid, List<dynamic> likes)? likePost,
    TResult Function(String uid, String followId)? followUser,
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
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(LikepostEvent value) likePost,
    required TResult Function(FollowUserEvent value) followUser,
  }) {
    return uploadPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadPostEvent value)? uploadPost,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(LikepostEvent value)? likePost,
    TResult? Function(FollowUserEvent value)? followUser,
  }) {
    return uploadPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadPostEvent value)? uploadPost,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(LikepostEvent value)? likePost,
    TResult Function(FollowUserEvent value)? followUser,
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

  String get description;
  Uint8List get file;
  String get uid;
  String get userName;
  String get profileImage;
  @JsonKey(ignore: true)
  _$$UploadPostEventCopyWith<_$UploadPostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePostEventCopyWith<$Res> {
  factory _$$DeletePostEventCopyWith(
          _$DeletePostEvent value, $Res Function(_$DeletePostEvent) then) =
      __$$DeletePostEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$DeletePostEventCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$DeletePostEvent>
    implements _$$DeletePostEventCopyWith<$Res> {
  __$$DeletePostEventCopyWithImpl(
      _$DeletePostEvent _value, $Res Function(_$DeletePostEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$DeletePostEvent(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletePostEvent implements DeletePostEvent {
  const _$DeletePostEvent({required this.postId});

  @override
  final String postId;

  @override
  String toString() {
    return 'PostEvent.deletePost(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePostEvent &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePostEventCopyWith<_$DeletePostEvent> get copyWith =>
      __$$DeletePostEventCopyWithImpl<_$DeletePostEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description, Uint8List file, String uid,
            String userName, String profileImage)
        uploadPost,
    required TResult Function(String postId) deletePost,
    required TResult Function(String postId, String uid, List<dynamic> likes)
        likePost,
    required TResult Function(String uid, String followId) followUser,
  }) {
    return deletePost(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String description, Uint8List file, String uid,
            String userName, String profileImage)?
        uploadPost,
    TResult? Function(String postId)? deletePost,
    TResult? Function(String postId, String uid, List<dynamic> likes)? likePost,
    TResult? Function(String uid, String followId)? followUser,
  }) {
    return deletePost?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description, Uint8List file, String uid,
            String userName, String profileImage)?
        uploadPost,
    TResult Function(String postId)? deletePost,
    TResult Function(String postId, String uid, List<dynamic> likes)? likePost,
    TResult Function(String uid, String followId)? followUser,
    required TResult orElse(),
  }) {
    if (deletePost != null) {
      return deletePost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadPostEvent value) uploadPost,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(LikepostEvent value) likePost,
    required TResult Function(FollowUserEvent value) followUser,
  }) {
    return deletePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadPostEvent value)? uploadPost,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(LikepostEvent value)? likePost,
    TResult? Function(FollowUserEvent value)? followUser,
  }) {
    return deletePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadPostEvent value)? uploadPost,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(LikepostEvent value)? likePost,
    TResult Function(FollowUserEvent value)? followUser,
    required TResult orElse(),
  }) {
    if (deletePost != null) {
      return deletePost(this);
    }
    return orElse();
  }
}

abstract class DeletePostEvent implements PostEvent {
  const factory DeletePostEvent({required final String postId}) =
      _$DeletePostEvent;

  String get postId;
  @JsonKey(ignore: true)
  _$$DeletePostEventCopyWith<_$DeletePostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikepostEventCopyWith<$Res> {
  factory _$$LikepostEventCopyWith(
          _$LikepostEvent value, $Res Function(_$LikepostEvent) then) =
      __$$LikepostEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId, String uid, List<dynamic> likes});
}

/// @nodoc
class __$$LikepostEventCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$LikepostEvent>
    implements _$$LikepostEventCopyWith<$Res> {
  __$$LikepostEventCopyWithImpl(
      _$LikepostEvent _value, $Res Function(_$LikepostEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? uid = null,
    Object? likes = null,
  }) {
    return _then(_$LikepostEvent(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$LikepostEvent implements LikepostEvent {
  const _$LikepostEvent(
      {required this.postId,
      required this.uid,
      required final List<dynamic> likes})
      : _likes = likes;

  @override
  final String postId;
  @override
  final String uid;
  final List<dynamic> _likes;
  @override
  List<dynamic> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  String toString() {
    return 'PostEvent.likePost(postId: $postId, uid: $uid, likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikepostEvent &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other._likes, _likes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, postId, uid, const DeepCollectionEquality().hash(_likes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikepostEventCopyWith<_$LikepostEvent> get copyWith =>
      __$$LikepostEventCopyWithImpl<_$LikepostEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description, Uint8List file, String uid,
            String userName, String profileImage)
        uploadPost,
    required TResult Function(String postId) deletePost,
    required TResult Function(String postId, String uid, List<dynamic> likes)
        likePost,
    required TResult Function(String uid, String followId) followUser,
  }) {
    return likePost(postId, uid, likes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String description, Uint8List file, String uid,
            String userName, String profileImage)?
        uploadPost,
    TResult? Function(String postId)? deletePost,
    TResult? Function(String postId, String uid, List<dynamic> likes)? likePost,
    TResult? Function(String uid, String followId)? followUser,
  }) {
    return likePost?.call(postId, uid, likes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description, Uint8List file, String uid,
            String userName, String profileImage)?
        uploadPost,
    TResult Function(String postId)? deletePost,
    TResult Function(String postId, String uid, List<dynamic> likes)? likePost,
    TResult Function(String uid, String followId)? followUser,
    required TResult orElse(),
  }) {
    if (likePost != null) {
      return likePost(postId, uid, likes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadPostEvent value) uploadPost,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(LikepostEvent value) likePost,
    required TResult Function(FollowUserEvent value) followUser,
  }) {
    return likePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadPostEvent value)? uploadPost,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(LikepostEvent value)? likePost,
    TResult? Function(FollowUserEvent value)? followUser,
  }) {
    return likePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadPostEvent value)? uploadPost,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(LikepostEvent value)? likePost,
    TResult Function(FollowUserEvent value)? followUser,
    required TResult orElse(),
  }) {
    if (likePost != null) {
      return likePost(this);
    }
    return orElse();
  }
}

abstract class LikepostEvent implements PostEvent {
  const factory LikepostEvent(
      {required final String postId,
      required final String uid,
      required final List<dynamic> likes}) = _$LikepostEvent;

  String get postId;
  String get uid;
  List<dynamic> get likes;
  @JsonKey(ignore: true)
  _$$LikepostEventCopyWith<_$LikepostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FollowUserEventCopyWith<$Res> {
  factory _$$FollowUserEventCopyWith(
          _$FollowUserEvent value, $Res Function(_$FollowUserEvent) then) =
      __$$FollowUserEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, String followId});
}

/// @nodoc
class __$$FollowUserEventCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$FollowUserEvent>
    implements _$$FollowUserEventCopyWith<$Res> {
  __$$FollowUserEventCopyWithImpl(
      _$FollowUserEvent _value, $Res Function(_$FollowUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? followId = null,
  }) {
    return _then(_$FollowUserEvent(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      followId: null == followId
          ? _value.followId
          : followId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FollowUserEvent implements FollowUserEvent {
  const _$FollowUserEvent({required this.uid, required this.followId});

  @override
  final String uid;
  @override
  final String followId;

  @override
  String toString() {
    return 'PostEvent.followUser(uid: $uid, followId: $followId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowUserEvent &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.followId, followId) ||
                other.followId == followId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, followId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowUserEventCopyWith<_$FollowUserEvent> get copyWith =>
      __$$FollowUserEventCopyWithImpl<_$FollowUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description, Uint8List file, String uid,
            String userName, String profileImage)
        uploadPost,
    required TResult Function(String postId) deletePost,
    required TResult Function(String postId, String uid, List<dynamic> likes)
        likePost,
    required TResult Function(String uid, String followId) followUser,
  }) {
    return followUser(uid, followId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String description, Uint8List file, String uid,
            String userName, String profileImage)?
        uploadPost,
    TResult? Function(String postId)? deletePost,
    TResult? Function(String postId, String uid, List<dynamic> likes)? likePost,
    TResult? Function(String uid, String followId)? followUser,
  }) {
    return followUser?.call(uid, followId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description, Uint8List file, String uid,
            String userName, String profileImage)?
        uploadPost,
    TResult Function(String postId)? deletePost,
    TResult Function(String postId, String uid, List<dynamic> likes)? likePost,
    TResult Function(String uid, String followId)? followUser,
    required TResult orElse(),
  }) {
    if (followUser != null) {
      return followUser(uid, followId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadPostEvent value) uploadPost,
    required TResult Function(DeletePostEvent value) deletePost,
    required TResult Function(LikepostEvent value) likePost,
    required TResult Function(FollowUserEvent value) followUser,
  }) {
    return followUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadPostEvent value)? uploadPost,
    TResult? Function(DeletePostEvent value)? deletePost,
    TResult? Function(LikepostEvent value)? likePost,
    TResult? Function(FollowUserEvent value)? followUser,
  }) {
    return followUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadPostEvent value)? uploadPost,
    TResult Function(DeletePostEvent value)? deletePost,
    TResult Function(LikepostEvent value)? likePost,
    TResult Function(FollowUserEvent value)? followUser,
    required TResult orElse(),
  }) {
    if (followUser != null) {
      return followUser(this);
    }
    return orElse();
  }
}

abstract class FollowUserEvent implements PostEvent {
  const factory FollowUserEvent(
      {required final String uid,
      required final String followId}) = _$FollowUserEvent;

  String get uid;
  String get followId;
  @JsonKey(ignore: true)
  _$$FollowUserEventCopyWith<_$FollowUserEvent> get copyWith =>
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
