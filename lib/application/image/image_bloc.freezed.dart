// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() clearImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? clearImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? clearImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(ClearImage value) clearImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImageEvent value)? pickImage,
    TResult? Function(ClearImage value)? clearImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(ClearImage value)? clearImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEventCopyWith<$Res> {
  factory $ImageEventCopyWith(
          ImageEvent value, $Res Function(ImageEvent) then) =
      _$ImageEventCopyWithImpl<$Res, ImageEvent>;
}

/// @nodoc
class _$ImageEventCopyWithImpl<$Res, $Val extends ImageEvent>
    implements $ImageEventCopyWith<$Res> {
  _$ImageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PickImageEventCopyWith<$Res> {
  factory _$$PickImageEventCopyWith(
          _$PickImageEvent value, $Res Function(_$PickImageEvent) then) =
      __$$PickImageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class __$$PickImageEventCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$PickImageEvent>
    implements _$$PickImageEventCopyWith<$Res> {
  __$$PickImageEventCopyWithImpl(
      _$PickImageEvent _value, $Res Function(_$PickImageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_$PickImageEvent(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$PickImageEvent implements PickImageEvent {
  const _$PickImageEvent({required this.source});

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'ImageEvent.pickImage(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageEvent &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImageEventCopyWith<_$PickImageEvent> get copyWith =>
      __$$PickImageEventCopyWithImpl<_$PickImageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() clearImage,
  }) {
    return pickImage(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? clearImage,
  }) {
    return pickImage?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? clearImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(ClearImage value) clearImage,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImageEvent value)? pickImage,
    TResult? Function(ClearImage value)? clearImage,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(ClearImage value)? clearImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class PickImageEvent implements ImageEvent {
  const factory PickImageEvent({required final ImageSource source}) =
      _$PickImageEvent;

  ImageSource get source;
  @JsonKey(ignore: true)
  _$$PickImageEventCopyWith<_$PickImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearImageCopyWith<$Res> {
  factory _$$ClearImageCopyWith(
          _$ClearImage value, $Res Function(_$ClearImage) then) =
      __$$ClearImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImageCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$ClearImage>
    implements _$$ClearImageCopyWith<$Res> {
  __$$ClearImageCopyWithImpl(
      _$ClearImage _value, $Res Function(_$ClearImage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearImage implements ClearImage {
  const _$ClearImage();

  @override
  String toString() {
    return 'ImageEvent.clearImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() clearImage,
  }) {
    return clearImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? clearImage,
  }) {
    return clearImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? clearImage,
    required TResult orElse(),
  }) {
    if (clearImage != null) {
      return clearImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(ClearImage value) clearImage,
  }) {
    return clearImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImageEvent value)? pickImage,
    TResult? Function(ClearImage value)? clearImage,
  }) {
    return clearImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(ClearImage value)? clearImage,
    required TResult orElse(),
  }) {
    if (clearImage != null) {
      return clearImage(this);
    }
    return orElse();
  }
}

abstract class ClearImage implements ImageEvent {
  const factory ClearImage() = _$ClearImage;
}

/// @nodoc
mixin _$ImageState {
  bool get success => throw _privateConstructorUsedError;
  bool get failure => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  Uint8List? get imagebytes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageStateCopyWith<ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res, ImageState>;
  @useResult
  $Res call(
      {bool success, bool failure, String errorMessage, Uint8List? imagebytes});
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res, $Val extends ImageState>
    implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? failure = null,
    Object? errorMessage = null,
    Object? imagebytes = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      imagebytes: freezed == imagebytes
          ? _value.imagebytes
          : imagebytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageStateCopyWith<$Res>
    implements $ImageStateCopyWith<$Res> {
  factory _$$_ImageStateCopyWith(
          _$_ImageState value, $Res Function(_$_ImageState) then) =
      __$$_ImageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success, bool failure, String errorMessage, Uint8List? imagebytes});
}

/// @nodoc
class __$$_ImageStateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$_ImageState>
    implements _$$_ImageStateCopyWith<$Res> {
  __$$_ImageStateCopyWithImpl(
      _$_ImageState _value, $Res Function(_$_ImageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? failure = null,
    Object? errorMessage = null,
    Object? imagebytes = freezed,
  }) {
    return _then(_$_ImageState(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      imagebytes: freezed == imagebytes
          ? _value.imagebytes
          : imagebytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$_ImageState implements _ImageState {
  const _$_ImageState(
      {required this.success,
      required this.failure,
      required this.errorMessage,
      required this.imagebytes});

  @override
  final bool success;
  @override
  final bool failure;
  @override
  final String errorMessage;
  @override
  final Uint8List? imagebytes;

  @override
  String toString() {
    return 'ImageState(success: $success, failure: $failure, errorMessage: $errorMessage, imagebytes: $imagebytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageState &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.imagebytes, imagebytes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success, failure, errorMessage,
      const DeepCollectionEquality().hash(imagebytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageStateCopyWith<_$_ImageState> get copyWith =>
      __$$_ImageStateCopyWithImpl<_$_ImageState>(this, _$identity);
}

abstract class _ImageState implements ImageState {
  const factory _ImageState(
      {required final bool success,
      required final bool failure,
      required final String errorMessage,
      required final Uint8List? imagebytes}) = _$_ImageState;

  @override
  bool get success;
  @override
  bool get failure;
  @override
  String get errorMessage;
  @override
  Uint8List? get imagebytes;
  @override
  @JsonKey(ignore: true)
  _$$_ImageStateCopyWith<_$_ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
