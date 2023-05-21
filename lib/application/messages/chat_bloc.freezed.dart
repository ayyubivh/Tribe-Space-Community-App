// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  String get groupName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String id, String groupName)
        createGroupEvent,
    required TResult Function(String groupId, String userName, String groupName)
        toggleGroupJoinEvent,
    required TResult Function(String groupName, String groupId) isUserJoined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult? Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult? Function(String groupName, String groupId)? isUserJoined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult Function(String groupName, String groupId)? isUserJoined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateGroupEvent value) createGroupEvent,
    required TResult Function(ToggleGroupJoinEvent value) toggleGroupJoinEvent,
    required TResult Function(IsUserJoined value) isUserJoined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateGroupEvent value)? createGroupEvent,
    TResult? Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult? Function(IsUserJoined value)? isUserJoined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGroupEvent value)? createGroupEvent,
    TResult Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult Function(IsUserJoined value)? isUserJoined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatEventCopyWith<ChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
  @useResult
  $Res call({String groupName});
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
  }) {
    return _then(_value.copyWith(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateGroupEventCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$$CreateGroupEventCopyWith(
          _$CreateGroupEvent value, $Res Function(_$CreateGroupEvent) then) =
      __$$CreateGroupEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String id, String groupName});
}

/// @nodoc
class __$$CreateGroupEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$CreateGroupEvent>
    implements _$$CreateGroupEventCopyWith<$Res> {
  __$$CreateGroupEventCopyWithImpl(
      _$CreateGroupEvent _value, $Res Function(_$CreateGroupEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? id = null,
    Object? groupName = null,
  }) {
    return _then(_$CreateGroupEvent(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateGroupEvent
    with DiagnosticableTreeMixin
    implements CreateGroupEvent {
  const _$CreateGroupEvent(
      {required this.userName, required this.id, required this.groupName});

  @override
  final String userName;
  @override
  final String id;
  @override
  final String groupName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.createGroupEvent(userName: $userName, id: $id, groupName: $groupName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.createGroupEvent'))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('groupName', groupName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroupEvent &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, id, groupName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroupEventCopyWith<_$CreateGroupEvent> get copyWith =>
      __$$CreateGroupEventCopyWithImpl<_$CreateGroupEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String id, String groupName)
        createGroupEvent,
    required TResult Function(String groupId, String userName, String groupName)
        toggleGroupJoinEvent,
    required TResult Function(String groupName, String groupId) isUserJoined,
  }) {
    return createGroupEvent(userName, id, groupName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult? Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult? Function(String groupName, String groupId)? isUserJoined,
  }) {
    return createGroupEvent?.call(userName, id, groupName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult Function(String groupName, String groupId)? isUserJoined,
    required TResult orElse(),
  }) {
    if (createGroupEvent != null) {
      return createGroupEvent(userName, id, groupName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateGroupEvent value) createGroupEvent,
    required TResult Function(ToggleGroupJoinEvent value) toggleGroupJoinEvent,
    required TResult Function(IsUserJoined value) isUserJoined,
  }) {
    return createGroupEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateGroupEvent value)? createGroupEvent,
    TResult? Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult? Function(IsUserJoined value)? isUserJoined,
  }) {
    return createGroupEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGroupEvent value)? createGroupEvent,
    TResult Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult Function(IsUserJoined value)? isUserJoined,
    required TResult orElse(),
  }) {
    if (createGroupEvent != null) {
      return createGroupEvent(this);
    }
    return orElse();
  }
}

abstract class CreateGroupEvent implements ChatEvent {
  const factory CreateGroupEvent(
      {required final String userName,
      required final String id,
      required final String groupName}) = _$CreateGroupEvent;

  String get userName;
  String get id;
  @override
  String get groupName;
  @override
  @JsonKey(ignore: true)
  _$$CreateGroupEventCopyWith<_$CreateGroupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleGroupJoinEventCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$$ToggleGroupJoinEventCopyWith(_$ToggleGroupJoinEvent value,
          $Res Function(_$ToggleGroupJoinEvent) then) =
      __$$ToggleGroupJoinEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String groupId, String userName, String groupName});
}

/// @nodoc
class __$$ToggleGroupJoinEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ToggleGroupJoinEvent>
    implements _$$ToggleGroupJoinEventCopyWith<$Res> {
  __$$ToggleGroupJoinEventCopyWithImpl(_$ToggleGroupJoinEvent _value,
      $Res Function(_$ToggleGroupJoinEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? userName = null,
    Object? groupName = null,
  }) {
    return _then(_$ToggleGroupJoinEvent(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleGroupJoinEvent
    with DiagnosticableTreeMixin
    implements ToggleGroupJoinEvent {
  const _$ToggleGroupJoinEvent(
      {required this.groupId, required this.userName, required this.groupName});

  @override
  final String groupId;
  @override
  final String userName;
  @override
  final String groupName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.toggleGroupJoinEvent(groupId: $groupId, userName: $userName, groupName: $groupName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.toggleGroupJoinEvent'))
      ..add(DiagnosticsProperty('groupId', groupId))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('groupName', groupName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleGroupJoinEvent &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId, userName, groupName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleGroupJoinEventCopyWith<_$ToggleGroupJoinEvent> get copyWith =>
      __$$ToggleGroupJoinEventCopyWithImpl<_$ToggleGroupJoinEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String id, String groupName)
        createGroupEvent,
    required TResult Function(String groupId, String userName, String groupName)
        toggleGroupJoinEvent,
    required TResult Function(String groupName, String groupId) isUserJoined,
  }) {
    return toggleGroupJoinEvent(groupId, userName, groupName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult? Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult? Function(String groupName, String groupId)? isUserJoined,
  }) {
    return toggleGroupJoinEvent?.call(groupId, userName, groupName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult Function(String groupName, String groupId)? isUserJoined,
    required TResult orElse(),
  }) {
    if (toggleGroupJoinEvent != null) {
      return toggleGroupJoinEvent(groupId, userName, groupName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateGroupEvent value) createGroupEvent,
    required TResult Function(ToggleGroupJoinEvent value) toggleGroupJoinEvent,
    required TResult Function(IsUserJoined value) isUserJoined,
  }) {
    return toggleGroupJoinEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateGroupEvent value)? createGroupEvent,
    TResult? Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult? Function(IsUserJoined value)? isUserJoined,
  }) {
    return toggleGroupJoinEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGroupEvent value)? createGroupEvent,
    TResult Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult Function(IsUserJoined value)? isUserJoined,
    required TResult orElse(),
  }) {
    if (toggleGroupJoinEvent != null) {
      return toggleGroupJoinEvent(this);
    }
    return orElse();
  }
}

abstract class ToggleGroupJoinEvent implements ChatEvent {
  const factory ToggleGroupJoinEvent(
      {required final String groupId,
      required final String userName,
      required final String groupName}) = _$ToggleGroupJoinEvent;

  String get groupId;
  String get userName;
  @override
  String get groupName;
  @override
  @JsonKey(ignore: true)
  _$$ToggleGroupJoinEventCopyWith<_$ToggleGroupJoinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsUserJoinedCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$$IsUserJoinedCopyWith(
          _$IsUserJoined value, $Res Function(_$IsUserJoined) then) =
      __$$IsUserJoinedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String groupName, String groupId});
}

/// @nodoc
class __$$IsUserJoinedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$IsUserJoined>
    implements _$$IsUserJoinedCopyWith<$Res> {
  __$$IsUserJoinedCopyWithImpl(
      _$IsUserJoined _value, $Res Function(_$IsUserJoined) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
    Object? groupId = null,
  }) {
    return _then(_$IsUserJoined(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsUserJoined with DiagnosticableTreeMixin implements IsUserJoined {
  const _$IsUserJoined({required this.groupName, required this.groupId});

  @override
  final String groupName;
  @override
  final String groupId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.isUserJoined(groupName: $groupName, groupId: $groupId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.isUserJoined'))
      ..add(DiagnosticsProperty('groupName', groupName))
      ..add(DiagnosticsProperty('groupId', groupId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsUserJoined &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupName, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsUserJoinedCopyWith<_$IsUserJoined> get copyWith =>
      __$$IsUserJoinedCopyWithImpl<_$IsUserJoined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String id, String groupName)
        createGroupEvent,
    required TResult Function(String groupId, String userName, String groupName)
        toggleGroupJoinEvent,
    required TResult Function(String groupName, String groupId) isUserJoined,
  }) {
    return isUserJoined(groupName, groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult? Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult? Function(String groupName, String groupId)? isUserJoined,
  }) {
    return isUserJoined?.call(groupName, groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult Function(String groupName, String groupId)? isUserJoined,
    required TResult orElse(),
  }) {
    if (isUserJoined != null) {
      return isUserJoined(groupName, groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateGroupEvent value) createGroupEvent,
    required TResult Function(ToggleGroupJoinEvent value) toggleGroupJoinEvent,
    required TResult Function(IsUserJoined value) isUserJoined,
  }) {
    return isUserJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateGroupEvent value)? createGroupEvent,
    TResult? Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult? Function(IsUserJoined value)? isUserJoined,
  }) {
    return isUserJoined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGroupEvent value)? createGroupEvent,
    TResult Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult Function(IsUserJoined value)? isUserJoined,
    required TResult orElse(),
  }) {
    if (isUserJoined != null) {
      return isUserJoined(this);
    }
    return orElse();
  }
}

abstract class IsUserJoined implements ChatEvent {
  const factory IsUserJoined(
      {required final String groupName,
      required final String groupId}) = _$IsUserJoined;

  @override
  String get groupName;
  String get groupId;
  @override
  @JsonKey(ignore: true)
  _$$IsUserJoinedCopyWith<_$IsUserJoined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get successMessage => throw _privateConstructorUsedError;
  bool get joinedOrStatus => throw _privateConstructorUsedError;
  String get joinStatusMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {bool isLoading,
      String groupName,
      String errorMessage,
      String successMessage,
      bool joinedOrStatus,
      String joinStatusMessage});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? groupName = null,
    Object? errorMessage = null,
    Object? successMessage = null,
    Object? joinedOrStatus = null,
    Object? joinStatusMessage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      joinedOrStatus: null == joinedOrStatus
          ? _value.joinedOrStatus
          : joinedOrStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      joinStatusMessage: null == joinStatusMessage
          ? _value.joinStatusMessage
          : joinStatusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String groupName,
      String errorMessage,
      String successMessage,
      bool joinedOrStatus,
      String joinStatusMessage});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? groupName = null,
    Object? errorMessage = null,
    Object? successMessage = null,
    Object? joinedOrStatus = null,
    Object? joinStatusMessage = null,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      joinedOrStatus: null == joinedOrStatus
          ? _value.joinedOrStatus
          : joinedOrStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      joinStatusMessage: null == joinStatusMessage
          ? _value.joinStatusMessage
          : joinStatusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.groupName,
      required this.errorMessage,
      required this.successMessage,
      required this.joinedOrStatus,
      required this.joinStatusMessage});

  @override
  final bool isLoading;
  @override
  final String groupName;
  @override
  final String errorMessage;
  @override
  final String successMessage;
  @override
  final bool joinedOrStatus;
  @override
  final String joinStatusMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState(isLoading: $isLoading, groupName: $groupName, errorMessage: $errorMessage, successMessage: $successMessage, joinedOrStatus: $joinedOrStatus, joinStatusMessage: $joinStatusMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('groupName', groupName))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('successMessage', successMessage))
      ..add(DiagnosticsProperty('joinedOrStatus', joinedOrStatus))
      ..add(DiagnosticsProperty('joinStatusMessage', joinStatusMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.joinedOrStatus, joinedOrStatus) ||
                other.joinedOrStatus == joinedOrStatus) &&
            (identical(other.joinStatusMessage, joinStatusMessage) ||
                other.joinStatusMessage == joinStatusMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, groupName,
      errorMessage, successMessage, joinedOrStatus, joinStatusMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ChatState {
  const factory _Initial(
      {required final bool isLoading,
      required final String groupName,
      required final String errorMessage,
      required final String successMessage,
      required final bool joinedOrStatus,
      required final String joinStatusMessage}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  String get groupName;
  @override
  String get errorMessage;
  @override
  String get successMessage;
  @override
  bool get joinedOrStatus;
  @override
  String get joinStatusMessage;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
