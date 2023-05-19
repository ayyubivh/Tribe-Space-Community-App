// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passWordStr) passWordChanged,
    required TResult Function(String nameStr) namechanged,
    required TResult Function(Uint8List imageBytes) profilePhotoAdd,
    required TResult Function(Status value) formSubmitted,
    required TResult Function() formSucceeded,
    required TResult Function() signWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passWordStr)? passWordChanged,
    TResult? Function(String nameStr)? namechanged,
    TResult? Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult? Function(Status value)? formSubmitted,
    TResult? Function()? formSucceeded,
    TResult? Function()? signWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passWordStr)? passWordChanged,
    TResult Function(String nameStr)? namechanged,
    TResult Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult Function(Status value)? formSubmitted,
    TResult Function()? formSucceeded,
    TResult Function()? signWithGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PassWordChanged value) passWordChanged,
    required TResult Function(NameChanged value) namechanged,
    required TResult Function(ProfilePhotoAdd value) profilePhotoAdd,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FomrSucceeded value) formSucceeded,
    required TResult Function(SignWithGooglePressed value)
        signWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PassWordChanged value)? passWordChanged,
    TResult? Function(NameChanged value)? namechanged,
    TResult? Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FomrSucceeded value)? formSucceeded,
    TResult? Function(SignWithGooglePressed value)? signWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PassWordChanged value)? passWordChanged,
    TResult Function(NameChanged value)? namechanged,
    TResult Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FomrSucceeded value)? formSucceeded,
    TResult Function(SignWithGooglePressed value)? signWithGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$EmailChanged>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$EmailChanged(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignInEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passWordStr) passWordChanged,
    required TResult Function(String nameStr) namechanged,
    required TResult Function(Uint8List imageBytes) profilePhotoAdd,
    required TResult Function(Status value) formSubmitted,
    required TResult Function() formSucceeded,
    required TResult Function() signWithGooglePressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passWordStr)? passWordChanged,
    TResult? Function(String nameStr)? namechanged,
    TResult? Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult? Function(Status value)? formSubmitted,
    TResult? Function()? formSucceeded,
    TResult? Function()? signWithGooglePressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passWordStr)? passWordChanged,
    TResult Function(String nameStr)? namechanged,
    TResult Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult Function(Status value)? formSubmitted,
    TResult Function()? formSucceeded,
    TResult Function()? signWithGooglePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PassWordChanged value) passWordChanged,
    required TResult Function(NameChanged value) namechanged,
    required TResult Function(ProfilePhotoAdd value) profilePhotoAdd,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FomrSucceeded value) formSucceeded,
    required TResult Function(SignWithGooglePressed value)
        signWithGooglePressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PassWordChanged value)? passWordChanged,
    TResult? Function(NameChanged value)? namechanged,
    TResult? Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FomrSucceeded value)? formSucceeded,
    TResult? Function(SignWithGooglePressed value)? signWithGooglePressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PassWordChanged value)? passWordChanged,
    TResult Function(NameChanged value)? namechanged,
    TResult Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FomrSucceeded value)? formSucceeded,
    TResult Function(SignWithGooglePressed value)? signWithGooglePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInEvent {
  const factory EmailChanged(final String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PassWordChangedCopyWith<$Res> {
  factory _$$PassWordChangedCopyWith(
          _$PassWordChanged value, $Res Function(_$PassWordChanged) then) =
      __$$PassWordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passWordStr});
}

/// @nodoc
class __$$PassWordChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$PassWordChanged>
    implements _$$PassWordChangedCopyWith<$Res> {
  __$$PassWordChangedCopyWithImpl(
      _$PassWordChanged _value, $Res Function(_$PassWordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passWordStr = null,
  }) {
    return _then(_$PassWordChanged(
      null == passWordStr
          ? _value.passWordStr
          : passWordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PassWordChanged implements PassWordChanged {
  const _$PassWordChanged(this.passWordStr);

  @override
  final String passWordStr;

  @override
  String toString() {
    return 'SignInEvent.passWordChanged(passWordStr: $passWordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassWordChanged &&
            (identical(other.passWordStr, passWordStr) ||
                other.passWordStr == passWordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passWordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PassWordChangedCopyWith<_$PassWordChanged> get copyWith =>
      __$$PassWordChangedCopyWithImpl<_$PassWordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passWordStr) passWordChanged,
    required TResult Function(String nameStr) namechanged,
    required TResult Function(Uint8List imageBytes) profilePhotoAdd,
    required TResult Function(Status value) formSubmitted,
    required TResult Function() formSucceeded,
    required TResult Function() signWithGooglePressed,
  }) {
    return passWordChanged(passWordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passWordStr)? passWordChanged,
    TResult? Function(String nameStr)? namechanged,
    TResult? Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult? Function(Status value)? formSubmitted,
    TResult? Function()? formSucceeded,
    TResult? Function()? signWithGooglePressed,
  }) {
    return passWordChanged?.call(passWordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passWordStr)? passWordChanged,
    TResult Function(String nameStr)? namechanged,
    TResult Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult Function(Status value)? formSubmitted,
    TResult Function()? formSucceeded,
    TResult Function()? signWithGooglePressed,
    required TResult orElse(),
  }) {
    if (passWordChanged != null) {
      return passWordChanged(passWordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PassWordChanged value) passWordChanged,
    required TResult Function(NameChanged value) namechanged,
    required TResult Function(ProfilePhotoAdd value) profilePhotoAdd,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FomrSucceeded value) formSucceeded,
    required TResult Function(SignWithGooglePressed value)
        signWithGooglePressed,
  }) {
    return passWordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PassWordChanged value)? passWordChanged,
    TResult? Function(NameChanged value)? namechanged,
    TResult? Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FomrSucceeded value)? formSucceeded,
    TResult? Function(SignWithGooglePressed value)? signWithGooglePressed,
  }) {
    return passWordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PassWordChanged value)? passWordChanged,
    TResult Function(NameChanged value)? namechanged,
    TResult Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FomrSucceeded value)? formSucceeded,
    TResult Function(SignWithGooglePressed value)? signWithGooglePressed,
    required TResult orElse(),
  }) {
    if (passWordChanged != null) {
      return passWordChanged(this);
    }
    return orElse();
  }
}

abstract class PassWordChanged implements SignInEvent {
  const factory PassWordChanged(final String passWordStr) = _$PassWordChanged;

  String get passWordStr;
  @JsonKey(ignore: true)
  _$$PassWordChangedCopyWith<_$PassWordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedCopyWith<$Res> {
  factory _$$NameChangedCopyWith(
          _$NameChanged value, $Res Function(_$NameChanged) then) =
      __$$NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$NameChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$NameChanged>
    implements _$$NameChangedCopyWith<$Res> {
  __$$NameChangedCopyWithImpl(
      _$NameChanged _value, $Res Function(_$NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$NameChanged(
      null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'SignInEvent.namechanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChanged &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      __$$NameChangedCopyWithImpl<_$NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passWordStr) passWordChanged,
    required TResult Function(String nameStr) namechanged,
    required TResult Function(Uint8List imageBytes) profilePhotoAdd,
    required TResult Function(Status value) formSubmitted,
    required TResult Function() formSucceeded,
    required TResult Function() signWithGooglePressed,
  }) {
    return namechanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passWordStr)? passWordChanged,
    TResult? Function(String nameStr)? namechanged,
    TResult? Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult? Function(Status value)? formSubmitted,
    TResult? Function()? formSucceeded,
    TResult? Function()? signWithGooglePressed,
  }) {
    return namechanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passWordStr)? passWordChanged,
    TResult Function(String nameStr)? namechanged,
    TResult Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult Function(Status value)? formSubmitted,
    TResult Function()? formSucceeded,
    TResult Function()? signWithGooglePressed,
    required TResult orElse(),
  }) {
    if (namechanged != null) {
      return namechanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PassWordChanged value) passWordChanged,
    required TResult Function(NameChanged value) namechanged,
    required TResult Function(ProfilePhotoAdd value) profilePhotoAdd,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FomrSucceeded value) formSucceeded,
    required TResult Function(SignWithGooglePressed value)
        signWithGooglePressed,
  }) {
    return namechanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PassWordChanged value)? passWordChanged,
    TResult? Function(NameChanged value)? namechanged,
    TResult? Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FomrSucceeded value)? formSucceeded,
    TResult? Function(SignWithGooglePressed value)? signWithGooglePressed,
  }) {
    return namechanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PassWordChanged value)? passWordChanged,
    TResult Function(NameChanged value)? namechanged,
    TResult Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FomrSucceeded value)? formSucceeded,
    TResult Function(SignWithGooglePressed value)? signWithGooglePressed,
    required TResult orElse(),
  }) {
    if (namechanged != null) {
      return namechanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements SignInEvent {
  const factory NameChanged(final String nameStr) = _$NameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfilePhotoAddCopyWith<$Res> {
  factory _$$ProfilePhotoAddCopyWith(
          _$ProfilePhotoAdd value, $Res Function(_$ProfilePhotoAdd) then) =
      __$$ProfilePhotoAddCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List imageBytes});
}

/// @nodoc
class __$$ProfilePhotoAddCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$ProfilePhotoAdd>
    implements _$$ProfilePhotoAddCopyWith<$Res> {
  __$$ProfilePhotoAddCopyWithImpl(
      _$ProfilePhotoAdd _value, $Res Function(_$ProfilePhotoAdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = null,
  }) {
    return _then(_$ProfilePhotoAdd(
      null == imageBytes
          ? _value.imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$ProfilePhotoAdd implements ProfilePhotoAdd {
  const _$ProfilePhotoAdd(this.imageBytes);

  @override
  final Uint8List imageBytes;

  @override
  String toString() {
    return 'SignInEvent.profilePhotoAdd(imageBytes: $imageBytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePhotoAdd &&
            const DeepCollectionEquality()
                .equals(other.imageBytes, imageBytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePhotoAddCopyWith<_$ProfilePhotoAdd> get copyWith =>
      __$$ProfilePhotoAddCopyWithImpl<_$ProfilePhotoAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passWordStr) passWordChanged,
    required TResult Function(String nameStr) namechanged,
    required TResult Function(Uint8List imageBytes) profilePhotoAdd,
    required TResult Function(Status value) formSubmitted,
    required TResult Function() formSucceeded,
    required TResult Function() signWithGooglePressed,
  }) {
    return profilePhotoAdd(imageBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passWordStr)? passWordChanged,
    TResult? Function(String nameStr)? namechanged,
    TResult? Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult? Function(Status value)? formSubmitted,
    TResult? Function()? formSucceeded,
    TResult? Function()? signWithGooglePressed,
  }) {
    return profilePhotoAdd?.call(imageBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passWordStr)? passWordChanged,
    TResult Function(String nameStr)? namechanged,
    TResult Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult Function(Status value)? formSubmitted,
    TResult Function()? formSucceeded,
    TResult Function()? signWithGooglePressed,
    required TResult orElse(),
  }) {
    if (profilePhotoAdd != null) {
      return profilePhotoAdd(imageBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PassWordChanged value) passWordChanged,
    required TResult Function(NameChanged value) namechanged,
    required TResult Function(ProfilePhotoAdd value) profilePhotoAdd,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FomrSucceeded value) formSucceeded,
    required TResult Function(SignWithGooglePressed value)
        signWithGooglePressed,
  }) {
    return profilePhotoAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PassWordChanged value)? passWordChanged,
    TResult? Function(NameChanged value)? namechanged,
    TResult? Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FomrSucceeded value)? formSucceeded,
    TResult? Function(SignWithGooglePressed value)? signWithGooglePressed,
  }) {
    return profilePhotoAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PassWordChanged value)? passWordChanged,
    TResult Function(NameChanged value)? namechanged,
    TResult Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FomrSucceeded value)? formSucceeded,
    TResult Function(SignWithGooglePressed value)? signWithGooglePressed,
    required TResult orElse(),
  }) {
    if (profilePhotoAdd != null) {
      return profilePhotoAdd(this);
    }
    return orElse();
  }
}

abstract class ProfilePhotoAdd implements SignInEvent {
  const factory ProfilePhotoAdd(final Uint8List imageBytes) = _$ProfilePhotoAdd;

  Uint8List get imageBytes;
  @JsonKey(ignore: true)
  _$$ProfilePhotoAddCopyWith<_$ProfilePhotoAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormSubmittedCopyWith<$Res> {
  factory _$$FormSubmittedCopyWith(
          _$FormSubmitted value, $Res Function(_$FormSubmitted) then) =
      __$$FormSubmittedCopyWithImpl<$Res>;
  @useResult
  $Res call({Status value});
}

/// @nodoc
class __$$FormSubmittedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$FormSubmitted>
    implements _$$FormSubmittedCopyWith<$Res> {
  __$$FormSubmittedCopyWithImpl(
      _$FormSubmitted _value, $Res Function(_$FormSubmitted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$FormSubmitted(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$FormSubmitted implements FormSubmitted {
  const _$FormSubmitted(this.value);

  @override
  final Status value;

  @override
  String toString() {
    return 'SignInEvent.formSubmitted(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSubmitted &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormSubmittedCopyWith<_$FormSubmitted> get copyWith =>
      __$$FormSubmittedCopyWithImpl<_$FormSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passWordStr) passWordChanged,
    required TResult Function(String nameStr) namechanged,
    required TResult Function(Uint8List imageBytes) profilePhotoAdd,
    required TResult Function(Status value) formSubmitted,
    required TResult Function() formSucceeded,
    required TResult Function() signWithGooglePressed,
  }) {
    return formSubmitted(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passWordStr)? passWordChanged,
    TResult? Function(String nameStr)? namechanged,
    TResult? Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult? Function(Status value)? formSubmitted,
    TResult? Function()? formSucceeded,
    TResult? Function()? signWithGooglePressed,
  }) {
    return formSubmitted?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passWordStr)? passWordChanged,
    TResult Function(String nameStr)? namechanged,
    TResult Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult Function(Status value)? formSubmitted,
    TResult Function()? formSucceeded,
    TResult Function()? signWithGooglePressed,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PassWordChanged value) passWordChanged,
    required TResult Function(NameChanged value) namechanged,
    required TResult Function(ProfilePhotoAdd value) profilePhotoAdd,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FomrSucceeded value) formSucceeded,
    required TResult Function(SignWithGooglePressed value)
        signWithGooglePressed,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PassWordChanged value)? passWordChanged,
    TResult? Function(NameChanged value)? namechanged,
    TResult? Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FomrSucceeded value)? formSucceeded,
    TResult? Function(SignWithGooglePressed value)? signWithGooglePressed,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PassWordChanged value)? passWordChanged,
    TResult Function(NameChanged value)? namechanged,
    TResult Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FomrSucceeded value)? formSucceeded,
    TResult Function(SignWithGooglePressed value)? signWithGooglePressed,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class FormSubmitted implements SignInEvent {
  const factory FormSubmitted(final Status value) = _$FormSubmitted;

  Status get value;
  @JsonKey(ignore: true)
  _$$FormSubmittedCopyWith<_$FormSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FomrSucceededCopyWith<$Res> {
  factory _$$FomrSucceededCopyWith(
          _$FomrSucceeded value, $Res Function(_$FomrSucceeded) then) =
      __$$FomrSucceededCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FomrSucceededCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$FomrSucceeded>
    implements _$$FomrSucceededCopyWith<$Res> {
  __$$FomrSucceededCopyWithImpl(
      _$FomrSucceeded _value, $Res Function(_$FomrSucceeded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FomrSucceeded implements FomrSucceeded {
  const _$FomrSucceeded();

  @override
  String toString() {
    return 'SignInEvent.formSucceeded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FomrSucceeded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passWordStr) passWordChanged,
    required TResult Function(String nameStr) namechanged,
    required TResult Function(Uint8List imageBytes) profilePhotoAdd,
    required TResult Function(Status value) formSubmitted,
    required TResult Function() formSucceeded,
    required TResult Function() signWithGooglePressed,
  }) {
    return formSucceeded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passWordStr)? passWordChanged,
    TResult? Function(String nameStr)? namechanged,
    TResult? Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult? Function(Status value)? formSubmitted,
    TResult? Function()? formSucceeded,
    TResult? Function()? signWithGooglePressed,
  }) {
    return formSucceeded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passWordStr)? passWordChanged,
    TResult Function(String nameStr)? namechanged,
    TResult Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult Function(Status value)? formSubmitted,
    TResult Function()? formSucceeded,
    TResult Function()? signWithGooglePressed,
    required TResult orElse(),
  }) {
    if (formSucceeded != null) {
      return formSucceeded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PassWordChanged value) passWordChanged,
    required TResult Function(NameChanged value) namechanged,
    required TResult Function(ProfilePhotoAdd value) profilePhotoAdd,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FomrSucceeded value) formSucceeded,
    required TResult Function(SignWithGooglePressed value)
        signWithGooglePressed,
  }) {
    return formSucceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PassWordChanged value)? passWordChanged,
    TResult? Function(NameChanged value)? namechanged,
    TResult? Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FomrSucceeded value)? formSucceeded,
    TResult? Function(SignWithGooglePressed value)? signWithGooglePressed,
  }) {
    return formSucceeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PassWordChanged value)? passWordChanged,
    TResult Function(NameChanged value)? namechanged,
    TResult Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FomrSucceeded value)? formSucceeded,
    TResult Function(SignWithGooglePressed value)? signWithGooglePressed,
    required TResult orElse(),
  }) {
    if (formSucceeded != null) {
      return formSucceeded(this);
    }
    return orElse();
  }
}

abstract class FomrSucceeded implements SignInEvent {
  const factory FomrSucceeded() = _$FomrSucceeded;
}

/// @nodoc
abstract class _$$SignWithGooglePressedCopyWith<$Res> {
  factory _$$SignWithGooglePressedCopyWith(_$SignWithGooglePressed value,
          $Res Function(_$SignWithGooglePressed) then) =
      __$$SignWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignWithGooglePressed>
    implements _$$SignWithGooglePressedCopyWith<$Res> {
  __$$SignWithGooglePressedCopyWithImpl(_$SignWithGooglePressed _value,
      $Res Function(_$SignWithGooglePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignWithGooglePressed implements SignWithGooglePressed {
  const _$SignWithGooglePressed();

  @override
  String toString() {
    return 'SignInEvent.signWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passWordStr) passWordChanged,
    required TResult Function(String nameStr) namechanged,
    required TResult Function(Uint8List imageBytes) profilePhotoAdd,
    required TResult Function(Status value) formSubmitted,
    required TResult Function() formSucceeded,
    required TResult Function() signWithGooglePressed,
  }) {
    return signWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passWordStr)? passWordChanged,
    TResult? Function(String nameStr)? namechanged,
    TResult? Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult? Function(Status value)? formSubmitted,
    TResult? Function()? formSucceeded,
    TResult? Function()? signWithGooglePressed,
  }) {
    return signWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passWordStr)? passWordChanged,
    TResult Function(String nameStr)? namechanged,
    TResult Function(Uint8List imageBytes)? profilePhotoAdd,
    TResult Function(Status value)? formSubmitted,
    TResult Function()? formSucceeded,
    TResult Function()? signWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signWithGooglePressed != null) {
      return signWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PassWordChanged value) passWordChanged,
    required TResult Function(NameChanged value) namechanged,
    required TResult Function(ProfilePhotoAdd value) profilePhotoAdd,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FomrSucceeded value) formSucceeded,
    required TResult Function(SignWithGooglePressed value)
        signWithGooglePressed,
  }) {
    return signWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PassWordChanged value)? passWordChanged,
    TResult? Function(NameChanged value)? namechanged,
    TResult? Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FomrSucceeded value)? formSucceeded,
    TResult? Function(SignWithGooglePressed value)? signWithGooglePressed,
  }) {
    return signWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PassWordChanged value)? passWordChanged,
    TResult Function(NameChanged value)? namechanged,
    TResult Function(ProfilePhotoAdd value)? profilePhotoAdd,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FomrSucceeded value)? formSucceeded,
    TResult Function(SignWithGooglePressed value)? signWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signWithGooglePressed != null) {
      return signWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignWithGooglePressed implements SignInEvent {
  const factory SignWithGooglePressed() = _$SignWithGooglePressed;
}

/// @nodoc
mixin _$SignInState {
  String get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  Uint8List? get photoUrl => throw _privateConstructorUsedError;
  bool get isEmailValid => throw _privateConstructorUsedError;
  bool get isPasswordValid => throw _privateConstructorUsedError;
  bool get isFormValid => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isNameValid => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isFormSuccessful => throw _privateConstructorUsedError;
  bool get isImage => throw _privateConstructorUsedError;
  bool get isFormValidateFailed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {String email,
      String? password,
      String userName,
      Uint8List? photoUrl,
      bool isEmailValid,
      bool isPasswordValid,
      bool isFormValid,
      bool isLoading,
      bool isNameValid,
      String errorMessage,
      bool isFormSuccessful,
      bool isImage,
      bool isFormValidateFailed});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = freezed,
    Object? userName = null,
    Object? photoUrl = freezed,
    Object? isEmailValid = null,
    Object? isPasswordValid = null,
    Object? isFormValid = null,
    Object? isLoading = null,
    Object? isNameValid = null,
    Object? errorMessage = null,
    Object? isFormSuccessful = null,
    Object? isImage = null,
    Object? isFormValidateFailed = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: null == isPasswordValid
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isNameValid: null == isNameValid
          ? _value.isNameValid
          : isNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isFormSuccessful: null == isFormSuccessful
          ? _value.isFormSuccessful
          : isFormSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isImage: null == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValidateFailed: null == isFormValidateFailed
          ? _value.isFormValidateFailed
          : isFormValidateFailed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String? password,
      String userName,
      Uint8List? photoUrl,
      bool isEmailValid,
      bool isPasswordValid,
      bool isFormValid,
      bool isLoading,
      bool isNameValid,
      String errorMessage,
      bool isFormSuccessful,
      bool isImage,
      bool isFormValidateFailed});
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignInState>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = freezed,
    Object? userName = null,
    Object? photoUrl = freezed,
    Object? isEmailValid = null,
    Object? isPasswordValid = null,
    Object? isFormValid = null,
    Object? isLoading = null,
    Object? isNameValid = null,
    Object? errorMessage = null,
    Object? isFormSuccessful = null,
    Object? isImage = null,
    Object? isFormValidateFailed = null,
  }) {
    return _then(_$_SignInState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: null == isPasswordValid
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isNameValid: null == isNameValid
          ? _value.isNameValid
          : isNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isFormSuccessful: null == isFormSuccessful
          ? _value.isFormSuccessful
          : isFormSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isImage: null == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValidateFailed: null == isFormValidateFailed
          ? _value.isFormValidateFailed
          : isFormValidateFailed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.email,
      required this.password,
      required this.userName,
      required this.photoUrl,
      required this.isEmailValid,
      required this.isPasswordValid,
      required this.isFormValid,
      required this.isLoading,
      required this.isNameValid,
      required this.errorMessage,
      required this.isFormSuccessful,
      required this.isImage,
      required this.isFormValidateFailed});

  @override
  final String email;
  @override
  final String? password;
  @override
  final String userName;
  @override
  final Uint8List? photoUrl;
  @override
  final bool isEmailValid;
  @override
  final bool isPasswordValid;
  @override
  final bool isFormValid;
  @override
  final bool isLoading;
  @override
  final bool isNameValid;
  @override
  final String errorMessage;
  @override
  final bool isFormSuccessful;
  @override
  final bool isImage;
  @override
  final bool isFormValidateFailed;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, userName: $userName, photoUrl: $photoUrl, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, isFormValid: $isFormValid, isLoading: $isLoading, isNameValid: $isNameValid, errorMessage: $errorMessage, isFormSuccessful: $isFormSuccessful, isImage: $isImage, isFormValidateFailed: $isFormValidateFailed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl) &&
            (identical(other.isEmailValid, isEmailValid) ||
                other.isEmailValid == isEmailValid) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                other.isPasswordValid == isPasswordValid) &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isNameValid, isNameValid) ||
                other.isNameValid == isNameValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isFormSuccessful, isFormSuccessful) ||
                other.isFormSuccessful == isFormSuccessful) &&
            (identical(other.isImage, isImage) || other.isImage == isImage) &&
            (identical(other.isFormValidateFailed, isFormValidateFailed) ||
                other.isFormValidateFailed == isFormValidateFailed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      password,
      userName,
      const DeepCollectionEquality().hash(photoUrl),
      isEmailValid,
      isPasswordValid,
      isFormValid,
      isLoading,
      isNameValid,
      errorMessage,
      isFormSuccessful,
      isImage,
      isFormValidateFailed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required final String email,
      required final String? password,
      required final String userName,
      required final Uint8List? photoUrl,
      required final bool isEmailValid,
      required final bool isPasswordValid,
      required final bool isFormValid,
      required final bool isLoading,
      required final bool isNameValid,
      required final String errorMessage,
      required final bool isFormSuccessful,
      required final bool isImage,
      required final bool isFormValidateFailed}) = _$_SignInState;

  @override
  String get email;
  @override
  String? get password;
  @override
  String get userName;
  @override
  Uint8List? get photoUrl;
  @override
  bool get isEmailValid;
  @override
  bool get isPasswordValid;
  @override
  bool get isFormValid;
  @override
  bool get isLoading;
  @override
  bool get isNameValid;
  @override
  String get errorMessage;
  @override
  bool get isFormSuccessful;
  @override
  bool get isImage;
  @override
  bool get isFormValidateFailed;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
