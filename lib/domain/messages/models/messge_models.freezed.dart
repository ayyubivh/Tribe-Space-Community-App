// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messge_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageChat _$MessageChatFromJson(Map<String, dynamic> json) {
  return _MessageChat.fromJson(json);
}

/// @nodoc
mixin _$MessageChat {
  String get idFrom => throw _privateConstructorUsedError;
  String get idTo => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageChatCopyWith<MessageChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageChatCopyWith<$Res> {
  factory $MessageChatCopyWith(
          MessageChat value, $Res Function(MessageChat) then) =
      _$MessageChatCopyWithImpl<$Res, MessageChat>;
  @useResult
  $Res call(
      {String idFrom, String idTo, String timestamp, String content, int type});
}

/// @nodoc
class _$MessageChatCopyWithImpl<$Res, $Val extends MessageChat>
    implements $MessageChatCopyWith<$Res> {
  _$MessageChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFrom = null,
    Object? idTo = null,
    Object? timestamp = null,
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      idFrom: null == idFrom
          ? _value.idFrom
          : idFrom // ignore: cast_nullable_to_non_nullable
              as String,
      idTo: null == idTo
          ? _value.idTo
          : idTo // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageChatCopyWith<$Res>
    implements $MessageChatCopyWith<$Res> {
  factory _$$_MessageChatCopyWith(
          _$_MessageChat value, $Res Function(_$_MessageChat) then) =
      __$$_MessageChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String idFrom, String idTo, String timestamp, String content, int type});
}

/// @nodoc
class __$$_MessageChatCopyWithImpl<$Res>
    extends _$MessageChatCopyWithImpl<$Res, _$_MessageChat>
    implements _$$_MessageChatCopyWith<$Res> {
  __$$_MessageChatCopyWithImpl(
      _$_MessageChat _value, $Res Function(_$_MessageChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFrom = null,
    Object? idTo = null,
    Object? timestamp = null,
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_$_MessageChat(
      idFrom: null == idFrom
          ? _value.idFrom
          : idFrom // ignore: cast_nullable_to_non_nullable
              as String,
      idTo: null == idTo
          ? _value.idTo
          : idTo // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageChat implements _MessageChat {
  const _$_MessageChat(
      {required this.idFrom,
      required this.idTo,
      required this.timestamp,
      required this.content,
      required this.type});

  factory _$_MessageChat.fromJson(Map<String, dynamic> json) =>
      _$$_MessageChatFromJson(json);

  @override
  final String idFrom;
  @override
  final String idTo;
  @override
  final String timestamp;
  @override
  final String content;
  @override
  final int type;

  @override
  String toString() {
    return 'MessageChat(idFrom: $idFrom, idTo: $idTo, timestamp: $timestamp, content: $content, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageChat &&
            (identical(other.idFrom, idFrom) || other.idFrom == idFrom) &&
            (identical(other.idTo, idTo) || other.idTo == idTo) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idFrom, idTo, timestamp, content, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageChatCopyWith<_$_MessageChat> get copyWith =>
      __$$_MessageChatCopyWithImpl<_$_MessageChat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageChatToJson(
      this,
    );
  }
}

abstract class _MessageChat implements MessageChat {
  const factory _MessageChat(
      {required final String idFrom,
      required final String idTo,
      required final String timestamp,
      required final String content,
      required final int type}) = _$_MessageChat;

  factory _MessageChat.fromJson(Map<String, dynamic> json) =
      _$_MessageChat.fromJson;

  @override
  String get idFrom;
  @override
  String get idTo;
  @override
  String get timestamp;
  @override
  String get content;
  @override
  int get type;
  @override
  @JsonKey(ignore: true)
  _$$_MessageChatCopyWith<_$_MessageChat> get copyWith =>
      throw _privateConstructorUsedError;
}
