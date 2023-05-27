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
mixin _$GroupChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String id, String groupName)
        createGroupEvent,
    required TResult Function(String groupId, String userName, String groupName)
        toggleGroupJoinEvent,
    required TResult Function(String groupName, String groupId) isUserJoined,
    required TResult Function() getUserGroups,
    required TResult Function(String groupId) getGroupMembers,
    required TResult Function(String groupId) getGroupAdmin,
    required TResult Function(String gorupId) getGroupchatsEvent,
    required TResult Function(
            String groupid,
            Map<String, dynamic> chatMessageData,
            TextEditingController controller)
        sendGroupMessageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult? Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult? Function(String groupName, String groupId)? isUserJoined,
    TResult? Function()? getUserGroups,
    TResult? Function(String groupId)? getGroupMembers,
    TResult? Function(String groupId)? getGroupAdmin,
    TResult? Function(String gorupId)? getGroupchatsEvent,
    TResult? Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult Function(String groupName, String groupId)? isUserJoined,
    TResult Function()? getUserGroups,
    TResult Function(String groupId)? getGroupMembers,
    TResult Function(String groupId)? getGroupAdmin,
    TResult Function(String gorupId)? getGroupchatsEvent,
    TResult Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateGroupEvent value) createGroupEvent,
    required TResult Function(ToggleGroupJoinEvent value) toggleGroupJoinEvent,
    required TResult Function(IsUserJoined value) isUserJoined,
    required TResult Function(GetUserGroups value) getUserGroups,
    required TResult Function(GetGroupMembers value) getGroupMembers,
    required TResult Function(GetGroupAdmin value) getGroupAdmin,
    required TResult Function(GetGroupchatsEvent value) getGroupchatsEvent,
    required TResult Function(SendGroupMessageEvent value)
        sendGroupMessageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateGroupEvent value)? createGroupEvent,
    TResult? Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult? Function(IsUserJoined value)? isUserJoined,
    TResult? Function(GetUserGroups value)? getUserGroups,
    TResult? Function(GetGroupMembers value)? getGroupMembers,
    TResult? Function(GetGroupAdmin value)? getGroupAdmin,
    TResult? Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult? Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGroupEvent value)? createGroupEvent,
    TResult Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult Function(IsUserJoined value)? isUserJoined,
    TResult Function(GetUserGroups value)? getUserGroups,
    TResult Function(GetGroupMembers value)? getGroupMembers,
    TResult Function(GetGroupAdmin value)? getGroupAdmin,
    TResult Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupChatEventCopyWith<$Res> {
  factory $GroupChatEventCopyWith(
          GroupChatEvent value, $Res Function(GroupChatEvent) then) =
      _$GroupChatEventCopyWithImpl<$Res, GroupChatEvent>;
}

/// @nodoc
class _$GroupChatEventCopyWithImpl<$Res, $Val extends GroupChatEvent>
    implements $GroupChatEventCopyWith<$Res> {
  _$GroupChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateGroupEventCopyWith<$Res> {
  factory _$$CreateGroupEventCopyWith(
          _$CreateGroupEvent value, $Res Function(_$CreateGroupEvent) then) =
      __$$CreateGroupEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName, String id, String groupName});
}

/// @nodoc
class __$$CreateGroupEventCopyWithImpl<$Res>
    extends _$GroupChatEventCopyWithImpl<$Res, _$CreateGroupEvent>
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
    return 'GroupChatEvent.createGroupEvent(userName: $userName, id: $id, groupName: $groupName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupChatEvent.createGroupEvent'))
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
    required TResult Function() getUserGroups,
    required TResult Function(String groupId) getGroupMembers,
    required TResult Function(String groupId) getGroupAdmin,
    required TResult Function(String gorupId) getGroupchatsEvent,
    required TResult Function(
            String groupid,
            Map<String, dynamic> chatMessageData,
            TextEditingController controller)
        sendGroupMessageEvent,
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
    TResult? Function()? getUserGroups,
    TResult? Function(String groupId)? getGroupMembers,
    TResult? Function(String groupId)? getGroupAdmin,
    TResult? Function(String gorupId)? getGroupchatsEvent,
    TResult? Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
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
    TResult Function()? getUserGroups,
    TResult Function(String groupId)? getGroupMembers,
    TResult Function(String groupId)? getGroupAdmin,
    TResult Function(String gorupId)? getGroupchatsEvent,
    TResult Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
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
    required TResult Function(GetUserGroups value) getUserGroups,
    required TResult Function(GetGroupMembers value) getGroupMembers,
    required TResult Function(GetGroupAdmin value) getGroupAdmin,
    required TResult Function(GetGroupchatsEvent value) getGroupchatsEvent,
    required TResult Function(SendGroupMessageEvent value)
        sendGroupMessageEvent,
  }) {
    return createGroupEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateGroupEvent value)? createGroupEvent,
    TResult? Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult? Function(IsUserJoined value)? isUserJoined,
    TResult? Function(GetUserGroups value)? getUserGroups,
    TResult? Function(GetGroupMembers value)? getGroupMembers,
    TResult? Function(GetGroupAdmin value)? getGroupAdmin,
    TResult? Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult? Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
  }) {
    return createGroupEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGroupEvent value)? createGroupEvent,
    TResult Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult Function(IsUserJoined value)? isUserJoined,
    TResult Function(GetUserGroups value)? getUserGroups,
    TResult Function(GetGroupMembers value)? getGroupMembers,
    TResult Function(GetGroupAdmin value)? getGroupAdmin,
    TResult Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
    required TResult orElse(),
  }) {
    if (createGroupEvent != null) {
      return createGroupEvent(this);
    }
    return orElse();
  }
}

abstract class CreateGroupEvent implements GroupChatEvent {
  const factory CreateGroupEvent(
      {required final String userName,
      required final String id,
      required final String groupName}) = _$CreateGroupEvent;

  String get userName;
  String get id;
  String get groupName;
  @JsonKey(ignore: true)
  _$$CreateGroupEventCopyWith<_$CreateGroupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleGroupJoinEventCopyWith<$Res> {
  factory _$$ToggleGroupJoinEventCopyWith(_$ToggleGroupJoinEvent value,
          $Res Function(_$ToggleGroupJoinEvent) then) =
      __$$ToggleGroupJoinEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupId, String userName, String groupName});
}

/// @nodoc
class __$$ToggleGroupJoinEventCopyWithImpl<$Res>
    extends _$GroupChatEventCopyWithImpl<$Res, _$ToggleGroupJoinEvent>
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
    return 'GroupChatEvent.toggleGroupJoinEvent(groupId: $groupId, userName: $userName, groupName: $groupName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupChatEvent.toggleGroupJoinEvent'))
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
    required TResult Function() getUserGroups,
    required TResult Function(String groupId) getGroupMembers,
    required TResult Function(String groupId) getGroupAdmin,
    required TResult Function(String gorupId) getGroupchatsEvent,
    required TResult Function(
            String groupid,
            Map<String, dynamic> chatMessageData,
            TextEditingController controller)
        sendGroupMessageEvent,
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
    TResult? Function()? getUserGroups,
    TResult? Function(String groupId)? getGroupMembers,
    TResult? Function(String groupId)? getGroupAdmin,
    TResult? Function(String gorupId)? getGroupchatsEvent,
    TResult? Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
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
    TResult Function()? getUserGroups,
    TResult Function(String groupId)? getGroupMembers,
    TResult Function(String groupId)? getGroupAdmin,
    TResult Function(String gorupId)? getGroupchatsEvent,
    TResult Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
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
    required TResult Function(GetUserGroups value) getUserGroups,
    required TResult Function(GetGroupMembers value) getGroupMembers,
    required TResult Function(GetGroupAdmin value) getGroupAdmin,
    required TResult Function(GetGroupchatsEvent value) getGroupchatsEvent,
    required TResult Function(SendGroupMessageEvent value)
        sendGroupMessageEvent,
  }) {
    return toggleGroupJoinEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateGroupEvent value)? createGroupEvent,
    TResult? Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult? Function(IsUserJoined value)? isUserJoined,
    TResult? Function(GetUserGroups value)? getUserGroups,
    TResult? Function(GetGroupMembers value)? getGroupMembers,
    TResult? Function(GetGroupAdmin value)? getGroupAdmin,
    TResult? Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult? Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
  }) {
    return toggleGroupJoinEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGroupEvent value)? createGroupEvent,
    TResult Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult Function(IsUserJoined value)? isUserJoined,
    TResult Function(GetUserGroups value)? getUserGroups,
    TResult Function(GetGroupMembers value)? getGroupMembers,
    TResult Function(GetGroupAdmin value)? getGroupAdmin,
    TResult Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
    required TResult orElse(),
  }) {
    if (toggleGroupJoinEvent != null) {
      return toggleGroupJoinEvent(this);
    }
    return orElse();
  }
}

abstract class ToggleGroupJoinEvent implements GroupChatEvent {
  const factory ToggleGroupJoinEvent(
      {required final String groupId,
      required final String userName,
      required final String groupName}) = _$ToggleGroupJoinEvent;

  String get groupId;
  String get userName;
  String get groupName;
  @JsonKey(ignore: true)
  _$$ToggleGroupJoinEventCopyWith<_$ToggleGroupJoinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsUserJoinedCopyWith<$Res> {
  factory _$$IsUserJoinedCopyWith(
          _$IsUserJoined value, $Res Function(_$IsUserJoined) then) =
      __$$IsUserJoinedCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupName, String groupId});
}

/// @nodoc
class __$$IsUserJoinedCopyWithImpl<$Res>
    extends _$GroupChatEventCopyWithImpl<$Res, _$IsUserJoined>
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
    return 'GroupChatEvent.isUserJoined(groupName: $groupName, groupId: $groupId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupChatEvent.isUserJoined'))
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
    required TResult Function() getUserGroups,
    required TResult Function(String groupId) getGroupMembers,
    required TResult Function(String groupId) getGroupAdmin,
    required TResult Function(String gorupId) getGroupchatsEvent,
    required TResult Function(
            String groupid,
            Map<String, dynamic> chatMessageData,
            TextEditingController controller)
        sendGroupMessageEvent,
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
    TResult? Function()? getUserGroups,
    TResult? Function(String groupId)? getGroupMembers,
    TResult? Function(String groupId)? getGroupAdmin,
    TResult? Function(String gorupId)? getGroupchatsEvent,
    TResult? Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
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
    TResult Function()? getUserGroups,
    TResult Function(String groupId)? getGroupMembers,
    TResult Function(String groupId)? getGroupAdmin,
    TResult Function(String gorupId)? getGroupchatsEvent,
    TResult Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
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
    required TResult Function(GetUserGroups value) getUserGroups,
    required TResult Function(GetGroupMembers value) getGroupMembers,
    required TResult Function(GetGroupAdmin value) getGroupAdmin,
    required TResult Function(GetGroupchatsEvent value) getGroupchatsEvent,
    required TResult Function(SendGroupMessageEvent value)
        sendGroupMessageEvent,
  }) {
    return isUserJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateGroupEvent value)? createGroupEvent,
    TResult? Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult? Function(IsUserJoined value)? isUserJoined,
    TResult? Function(GetUserGroups value)? getUserGroups,
    TResult? Function(GetGroupMembers value)? getGroupMembers,
    TResult? Function(GetGroupAdmin value)? getGroupAdmin,
    TResult? Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult? Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
  }) {
    return isUserJoined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGroupEvent value)? createGroupEvent,
    TResult Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult Function(IsUserJoined value)? isUserJoined,
    TResult Function(GetUserGroups value)? getUserGroups,
    TResult Function(GetGroupMembers value)? getGroupMembers,
    TResult Function(GetGroupAdmin value)? getGroupAdmin,
    TResult Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
    required TResult orElse(),
  }) {
    if (isUserJoined != null) {
      return isUserJoined(this);
    }
    return orElse();
  }
}

abstract class IsUserJoined implements GroupChatEvent {
  const factory IsUserJoined(
      {required final String groupName,
      required final String groupId}) = _$IsUserJoined;

  String get groupName;
  String get groupId;
  @JsonKey(ignore: true)
  _$$IsUserJoinedCopyWith<_$IsUserJoined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserGroupsCopyWith<$Res> {
  factory _$$GetUserGroupsCopyWith(
          _$GetUserGroups value, $Res Function(_$GetUserGroups) then) =
      __$$GetUserGroupsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserGroupsCopyWithImpl<$Res>
    extends _$GroupChatEventCopyWithImpl<$Res, _$GetUserGroups>
    implements _$$GetUserGroupsCopyWith<$Res> {
  __$$GetUserGroupsCopyWithImpl(
      _$GetUserGroups _value, $Res Function(_$GetUserGroups) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserGroups with DiagnosticableTreeMixin implements GetUserGroups {
  const _$GetUserGroups();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupChatEvent.getUserGroups()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'GroupChatEvent.getUserGroups'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserGroups);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String id, String groupName)
        createGroupEvent,
    required TResult Function(String groupId, String userName, String groupName)
        toggleGroupJoinEvent,
    required TResult Function(String groupName, String groupId) isUserJoined,
    required TResult Function() getUserGroups,
    required TResult Function(String groupId) getGroupMembers,
    required TResult Function(String groupId) getGroupAdmin,
    required TResult Function(String gorupId) getGroupchatsEvent,
    required TResult Function(
            String groupid,
            Map<String, dynamic> chatMessageData,
            TextEditingController controller)
        sendGroupMessageEvent,
  }) {
    return getUserGroups();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult? Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult? Function(String groupName, String groupId)? isUserJoined,
    TResult? Function()? getUserGroups,
    TResult? Function(String groupId)? getGroupMembers,
    TResult? Function(String groupId)? getGroupAdmin,
    TResult? Function(String gorupId)? getGroupchatsEvent,
    TResult? Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
  }) {
    return getUserGroups?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult Function(String groupName, String groupId)? isUserJoined,
    TResult Function()? getUserGroups,
    TResult Function(String groupId)? getGroupMembers,
    TResult Function(String groupId)? getGroupAdmin,
    TResult Function(String gorupId)? getGroupchatsEvent,
    TResult Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
    required TResult orElse(),
  }) {
    if (getUserGroups != null) {
      return getUserGroups();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateGroupEvent value) createGroupEvent,
    required TResult Function(ToggleGroupJoinEvent value) toggleGroupJoinEvent,
    required TResult Function(IsUserJoined value) isUserJoined,
    required TResult Function(GetUserGroups value) getUserGroups,
    required TResult Function(GetGroupMembers value) getGroupMembers,
    required TResult Function(GetGroupAdmin value) getGroupAdmin,
    required TResult Function(GetGroupchatsEvent value) getGroupchatsEvent,
    required TResult Function(SendGroupMessageEvent value)
        sendGroupMessageEvent,
  }) {
    return getUserGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateGroupEvent value)? createGroupEvent,
    TResult? Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult? Function(IsUserJoined value)? isUserJoined,
    TResult? Function(GetUserGroups value)? getUserGroups,
    TResult? Function(GetGroupMembers value)? getGroupMembers,
    TResult? Function(GetGroupAdmin value)? getGroupAdmin,
    TResult? Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult? Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
  }) {
    return getUserGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGroupEvent value)? createGroupEvent,
    TResult Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult Function(IsUserJoined value)? isUserJoined,
    TResult Function(GetUserGroups value)? getUserGroups,
    TResult Function(GetGroupMembers value)? getGroupMembers,
    TResult Function(GetGroupAdmin value)? getGroupAdmin,
    TResult Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
    required TResult orElse(),
  }) {
    if (getUserGroups != null) {
      return getUserGroups(this);
    }
    return orElse();
  }
}

abstract class GetUserGroups implements GroupChatEvent {
  const factory GetUserGroups() = _$GetUserGroups;
}

/// @nodoc
abstract class _$$GetGroupMembersCopyWith<$Res> {
  factory _$$GetGroupMembersCopyWith(
          _$GetGroupMembers value, $Res Function(_$GetGroupMembers) then) =
      __$$GetGroupMembersCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupId});
}

/// @nodoc
class __$$GetGroupMembersCopyWithImpl<$Res>
    extends _$GroupChatEventCopyWithImpl<$Res, _$GetGroupMembers>
    implements _$$GetGroupMembersCopyWith<$Res> {
  __$$GetGroupMembersCopyWithImpl(
      _$GetGroupMembers _value, $Res Function(_$GetGroupMembers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
  }) {
    return _then(_$GetGroupMembers(
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetGroupMembers
    with DiagnosticableTreeMixin
    implements GetGroupMembers {
  const _$GetGroupMembers(this.groupId);

  @override
  final String groupId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupChatEvent.getGroupMembers(groupId: $groupId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupChatEvent.getGroupMembers'))
      ..add(DiagnosticsProperty('groupId', groupId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGroupMembers &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGroupMembersCopyWith<_$GetGroupMembers> get copyWith =>
      __$$GetGroupMembersCopyWithImpl<_$GetGroupMembers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String id, String groupName)
        createGroupEvent,
    required TResult Function(String groupId, String userName, String groupName)
        toggleGroupJoinEvent,
    required TResult Function(String groupName, String groupId) isUserJoined,
    required TResult Function() getUserGroups,
    required TResult Function(String groupId) getGroupMembers,
    required TResult Function(String groupId) getGroupAdmin,
    required TResult Function(String gorupId) getGroupchatsEvent,
    required TResult Function(
            String groupid,
            Map<String, dynamic> chatMessageData,
            TextEditingController controller)
        sendGroupMessageEvent,
  }) {
    return getGroupMembers(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult? Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult? Function(String groupName, String groupId)? isUserJoined,
    TResult? Function()? getUserGroups,
    TResult? Function(String groupId)? getGroupMembers,
    TResult? Function(String groupId)? getGroupAdmin,
    TResult? Function(String gorupId)? getGroupchatsEvent,
    TResult? Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
  }) {
    return getGroupMembers?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult Function(String groupName, String groupId)? isUserJoined,
    TResult Function()? getUserGroups,
    TResult Function(String groupId)? getGroupMembers,
    TResult Function(String groupId)? getGroupAdmin,
    TResult Function(String gorupId)? getGroupchatsEvent,
    TResult Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
    required TResult orElse(),
  }) {
    if (getGroupMembers != null) {
      return getGroupMembers(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateGroupEvent value) createGroupEvent,
    required TResult Function(ToggleGroupJoinEvent value) toggleGroupJoinEvent,
    required TResult Function(IsUserJoined value) isUserJoined,
    required TResult Function(GetUserGroups value) getUserGroups,
    required TResult Function(GetGroupMembers value) getGroupMembers,
    required TResult Function(GetGroupAdmin value) getGroupAdmin,
    required TResult Function(GetGroupchatsEvent value) getGroupchatsEvent,
    required TResult Function(SendGroupMessageEvent value)
        sendGroupMessageEvent,
  }) {
    return getGroupMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateGroupEvent value)? createGroupEvent,
    TResult? Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult? Function(IsUserJoined value)? isUserJoined,
    TResult? Function(GetUserGroups value)? getUserGroups,
    TResult? Function(GetGroupMembers value)? getGroupMembers,
    TResult? Function(GetGroupAdmin value)? getGroupAdmin,
    TResult? Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult? Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
  }) {
    return getGroupMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGroupEvent value)? createGroupEvent,
    TResult Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult Function(IsUserJoined value)? isUserJoined,
    TResult Function(GetUserGroups value)? getUserGroups,
    TResult Function(GetGroupMembers value)? getGroupMembers,
    TResult Function(GetGroupAdmin value)? getGroupAdmin,
    TResult Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
    required TResult orElse(),
  }) {
    if (getGroupMembers != null) {
      return getGroupMembers(this);
    }
    return orElse();
  }
}

abstract class GetGroupMembers implements GroupChatEvent {
  const factory GetGroupMembers(final String groupId) = _$GetGroupMembers;

  String get groupId;
  @JsonKey(ignore: true)
  _$$GetGroupMembersCopyWith<_$GetGroupMembers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetGroupAdminCopyWith<$Res> {
  factory _$$GetGroupAdminCopyWith(
          _$GetGroupAdmin value, $Res Function(_$GetGroupAdmin) then) =
      __$$GetGroupAdminCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupId});
}

/// @nodoc
class __$$GetGroupAdminCopyWithImpl<$Res>
    extends _$GroupChatEventCopyWithImpl<$Res, _$GetGroupAdmin>
    implements _$$GetGroupAdminCopyWith<$Res> {
  __$$GetGroupAdminCopyWithImpl(
      _$GetGroupAdmin _value, $Res Function(_$GetGroupAdmin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
  }) {
    return _then(_$GetGroupAdmin(
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetGroupAdmin with DiagnosticableTreeMixin implements GetGroupAdmin {
  const _$GetGroupAdmin(this.groupId);

  @override
  final String groupId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupChatEvent.getGroupAdmin(groupId: $groupId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupChatEvent.getGroupAdmin'))
      ..add(DiagnosticsProperty('groupId', groupId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGroupAdmin &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGroupAdminCopyWith<_$GetGroupAdmin> get copyWith =>
      __$$GetGroupAdminCopyWithImpl<_$GetGroupAdmin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String id, String groupName)
        createGroupEvent,
    required TResult Function(String groupId, String userName, String groupName)
        toggleGroupJoinEvent,
    required TResult Function(String groupName, String groupId) isUserJoined,
    required TResult Function() getUserGroups,
    required TResult Function(String groupId) getGroupMembers,
    required TResult Function(String groupId) getGroupAdmin,
    required TResult Function(String gorupId) getGroupchatsEvent,
    required TResult Function(
            String groupid,
            Map<String, dynamic> chatMessageData,
            TextEditingController controller)
        sendGroupMessageEvent,
  }) {
    return getGroupAdmin(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult? Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult? Function(String groupName, String groupId)? isUserJoined,
    TResult? Function()? getUserGroups,
    TResult? Function(String groupId)? getGroupMembers,
    TResult? Function(String groupId)? getGroupAdmin,
    TResult? Function(String gorupId)? getGroupchatsEvent,
    TResult? Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
  }) {
    return getGroupAdmin?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult Function(String groupName, String groupId)? isUserJoined,
    TResult Function()? getUserGroups,
    TResult Function(String groupId)? getGroupMembers,
    TResult Function(String groupId)? getGroupAdmin,
    TResult Function(String gorupId)? getGroupchatsEvent,
    TResult Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
    required TResult orElse(),
  }) {
    if (getGroupAdmin != null) {
      return getGroupAdmin(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateGroupEvent value) createGroupEvent,
    required TResult Function(ToggleGroupJoinEvent value) toggleGroupJoinEvent,
    required TResult Function(IsUserJoined value) isUserJoined,
    required TResult Function(GetUserGroups value) getUserGroups,
    required TResult Function(GetGroupMembers value) getGroupMembers,
    required TResult Function(GetGroupAdmin value) getGroupAdmin,
    required TResult Function(GetGroupchatsEvent value) getGroupchatsEvent,
    required TResult Function(SendGroupMessageEvent value)
        sendGroupMessageEvent,
  }) {
    return getGroupAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateGroupEvent value)? createGroupEvent,
    TResult? Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult? Function(IsUserJoined value)? isUserJoined,
    TResult? Function(GetUserGroups value)? getUserGroups,
    TResult? Function(GetGroupMembers value)? getGroupMembers,
    TResult? Function(GetGroupAdmin value)? getGroupAdmin,
    TResult? Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult? Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
  }) {
    return getGroupAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGroupEvent value)? createGroupEvent,
    TResult Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult Function(IsUserJoined value)? isUserJoined,
    TResult Function(GetUserGroups value)? getUserGroups,
    TResult Function(GetGroupMembers value)? getGroupMembers,
    TResult Function(GetGroupAdmin value)? getGroupAdmin,
    TResult Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
    required TResult orElse(),
  }) {
    if (getGroupAdmin != null) {
      return getGroupAdmin(this);
    }
    return orElse();
  }
}

abstract class GetGroupAdmin implements GroupChatEvent {
  const factory GetGroupAdmin(final String groupId) = _$GetGroupAdmin;

  String get groupId;
  @JsonKey(ignore: true)
  _$$GetGroupAdminCopyWith<_$GetGroupAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetGroupchatsEventCopyWith<$Res> {
  factory _$$GetGroupchatsEventCopyWith(_$GetGroupchatsEvent value,
          $Res Function(_$GetGroupchatsEvent) then) =
      __$$GetGroupchatsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String gorupId});
}

/// @nodoc
class __$$GetGroupchatsEventCopyWithImpl<$Res>
    extends _$GroupChatEventCopyWithImpl<$Res, _$GetGroupchatsEvent>
    implements _$$GetGroupchatsEventCopyWith<$Res> {
  __$$GetGroupchatsEventCopyWithImpl(
      _$GetGroupchatsEvent _value, $Res Function(_$GetGroupchatsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gorupId = null,
  }) {
    return _then(_$GetGroupchatsEvent(
      null == gorupId
          ? _value.gorupId
          : gorupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetGroupchatsEvent
    with DiagnosticableTreeMixin
    implements GetGroupchatsEvent {
  const _$GetGroupchatsEvent(this.gorupId);

  @override
  final String gorupId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupChatEvent.getGroupchatsEvent(gorupId: $gorupId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupChatEvent.getGroupchatsEvent'))
      ..add(DiagnosticsProperty('gorupId', gorupId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGroupchatsEvent &&
            (identical(other.gorupId, gorupId) || other.gorupId == gorupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gorupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGroupchatsEventCopyWith<_$GetGroupchatsEvent> get copyWith =>
      __$$GetGroupchatsEventCopyWithImpl<_$GetGroupchatsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String id, String groupName)
        createGroupEvent,
    required TResult Function(String groupId, String userName, String groupName)
        toggleGroupJoinEvent,
    required TResult Function(String groupName, String groupId) isUserJoined,
    required TResult Function() getUserGroups,
    required TResult Function(String groupId) getGroupMembers,
    required TResult Function(String groupId) getGroupAdmin,
    required TResult Function(String gorupId) getGroupchatsEvent,
    required TResult Function(
            String groupid,
            Map<String, dynamic> chatMessageData,
            TextEditingController controller)
        sendGroupMessageEvent,
  }) {
    return getGroupchatsEvent(gorupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult? Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult? Function(String groupName, String groupId)? isUserJoined,
    TResult? Function()? getUserGroups,
    TResult? Function(String groupId)? getGroupMembers,
    TResult? Function(String groupId)? getGroupAdmin,
    TResult? Function(String gorupId)? getGroupchatsEvent,
    TResult? Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
  }) {
    return getGroupchatsEvent?.call(gorupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult Function(String groupName, String groupId)? isUserJoined,
    TResult Function()? getUserGroups,
    TResult Function(String groupId)? getGroupMembers,
    TResult Function(String groupId)? getGroupAdmin,
    TResult Function(String gorupId)? getGroupchatsEvent,
    TResult Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
    required TResult orElse(),
  }) {
    if (getGroupchatsEvent != null) {
      return getGroupchatsEvent(gorupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateGroupEvent value) createGroupEvent,
    required TResult Function(ToggleGroupJoinEvent value) toggleGroupJoinEvent,
    required TResult Function(IsUserJoined value) isUserJoined,
    required TResult Function(GetUserGroups value) getUserGroups,
    required TResult Function(GetGroupMembers value) getGroupMembers,
    required TResult Function(GetGroupAdmin value) getGroupAdmin,
    required TResult Function(GetGroupchatsEvent value) getGroupchatsEvent,
    required TResult Function(SendGroupMessageEvent value)
        sendGroupMessageEvent,
  }) {
    return getGroupchatsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateGroupEvent value)? createGroupEvent,
    TResult? Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult? Function(IsUserJoined value)? isUserJoined,
    TResult? Function(GetUserGroups value)? getUserGroups,
    TResult? Function(GetGroupMembers value)? getGroupMembers,
    TResult? Function(GetGroupAdmin value)? getGroupAdmin,
    TResult? Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult? Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
  }) {
    return getGroupchatsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGroupEvent value)? createGroupEvent,
    TResult Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult Function(IsUserJoined value)? isUserJoined,
    TResult Function(GetUserGroups value)? getUserGroups,
    TResult Function(GetGroupMembers value)? getGroupMembers,
    TResult Function(GetGroupAdmin value)? getGroupAdmin,
    TResult Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
    required TResult orElse(),
  }) {
    if (getGroupchatsEvent != null) {
      return getGroupchatsEvent(this);
    }
    return orElse();
  }
}

abstract class GetGroupchatsEvent implements GroupChatEvent {
  const factory GetGroupchatsEvent(final String gorupId) = _$GetGroupchatsEvent;

  String get gorupId;
  @JsonKey(ignore: true)
  _$$GetGroupchatsEventCopyWith<_$GetGroupchatsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendGroupMessageEventCopyWith<$Res> {
  factory _$$SendGroupMessageEventCopyWith(_$SendGroupMessageEvent value,
          $Res Function(_$SendGroupMessageEvent) then) =
      __$$SendGroupMessageEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String groupid,
      Map<String, dynamic> chatMessageData,
      TextEditingController controller});
}

/// @nodoc
class __$$SendGroupMessageEventCopyWithImpl<$Res>
    extends _$GroupChatEventCopyWithImpl<$Res, _$SendGroupMessageEvent>
    implements _$$SendGroupMessageEventCopyWith<$Res> {
  __$$SendGroupMessageEventCopyWithImpl(_$SendGroupMessageEvent _value,
      $Res Function(_$SendGroupMessageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupid = null,
    Object? chatMessageData = null,
    Object? controller = null,
  }) {
    return _then(_$SendGroupMessageEvent(
      null == groupid
          ? _value.groupid
          : groupid // ignore: cast_nullable_to_non_nullable
              as String,
      null == chatMessageData
          ? _value._chatMessageData
          : chatMessageData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$SendGroupMessageEvent
    with DiagnosticableTreeMixin
    implements SendGroupMessageEvent {
  const _$SendGroupMessageEvent(
      this.groupid, final Map<String, dynamic> chatMessageData, this.controller)
      : _chatMessageData = chatMessageData;

  @override
  final String groupid;
  final Map<String, dynamic> _chatMessageData;
  @override
  Map<String, dynamic> get chatMessageData {
    if (_chatMessageData is EqualUnmodifiableMapView) return _chatMessageData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_chatMessageData);
  }

  @override
  final TextEditingController controller;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupChatEvent.sendGroupMessageEvent(groupid: $groupid, chatMessageData: $chatMessageData, controller: $controller)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupChatEvent.sendGroupMessageEvent'))
      ..add(DiagnosticsProperty('groupid', groupid))
      ..add(DiagnosticsProperty('chatMessageData', chatMessageData))
      ..add(DiagnosticsProperty('controller', controller));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendGroupMessageEvent &&
            (identical(other.groupid, groupid) || other.groupid == groupid) &&
            const DeepCollectionEquality()
                .equals(other._chatMessageData, _chatMessageData) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupid,
      const DeepCollectionEquality().hash(_chatMessageData), controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendGroupMessageEventCopyWith<_$SendGroupMessageEvent> get copyWith =>
      __$$SendGroupMessageEventCopyWithImpl<_$SendGroupMessageEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String id, String groupName)
        createGroupEvent,
    required TResult Function(String groupId, String userName, String groupName)
        toggleGroupJoinEvent,
    required TResult Function(String groupName, String groupId) isUserJoined,
    required TResult Function() getUserGroups,
    required TResult Function(String groupId) getGroupMembers,
    required TResult Function(String groupId) getGroupAdmin,
    required TResult Function(String gorupId) getGroupchatsEvent,
    required TResult Function(
            String groupid,
            Map<String, dynamic> chatMessageData,
            TextEditingController controller)
        sendGroupMessageEvent,
  }) {
    return sendGroupMessageEvent(groupid, chatMessageData, controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult? Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult? Function(String groupName, String groupId)? isUserJoined,
    TResult? Function()? getUserGroups,
    TResult? Function(String groupId)? getGroupMembers,
    TResult? Function(String groupId)? getGroupAdmin,
    TResult? Function(String gorupId)? getGroupchatsEvent,
    TResult? Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
  }) {
    return sendGroupMessageEvent?.call(groupid, chatMessageData, controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String id, String groupName)?
        createGroupEvent,
    TResult Function(String groupId, String userName, String groupName)?
        toggleGroupJoinEvent,
    TResult Function(String groupName, String groupId)? isUserJoined,
    TResult Function()? getUserGroups,
    TResult Function(String groupId)? getGroupMembers,
    TResult Function(String groupId)? getGroupAdmin,
    TResult Function(String gorupId)? getGroupchatsEvent,
    TResult Function(String groupid, Map<String, dynamic> chatMessageData,
            TextEditingController controller)?
        sendGroupMessageEvent,
    required TResult orElse(),
  }) {
    if (sendGroupMessageEvent != null) {
      return sendGroupMessageEvent(groupid, chatMessageData, controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateGroupEvent value) createGroupEvent,
    required TResult Function(ToggleGroupJoinEvent value) toggleGroupJoinEvent,
    required TResult Function(IsUserJoined value) isUserJoined,
    required TResult Function(GetUserGroups value) getUserGroups,
    required TResult Function(GetGroupMembers value) getGroupMembers,
    required TResult Function(GetGroupAdmin value) getGroupAdmin,
    required TResult Function(GetGroupchatsEvent value) getGroupchatsEvent,
    required TResult Function(SendGroupMessageEvent value)
        sendGroupMessageEvent,
  }) {
    return sendGroupMessageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateGroupEvent value)? createGroupEvent,
    TResult? Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult? Function(IsUserJoined value)? isUserJoined,
    TResult? Function(GetUserGroups value)? getUserGroups,
    TResult? Function(GetGroupMembers value)? getGroupMembers,
    TResult? Function(GetGroupAdmin value)? getGroupAdmin,
    TResult? Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult? Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
  }) {
    return sendGroupMessageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateGroupEvent value)? createGroupEvent,
    TResult Function(ToggleGroupJoinEvent value)? toggleGroupJoinEvent,
    TResult Function(IsUserJoined value)? isUserJoined,
    TResult Function(GetUserGroups value)? getUserGroups,
    TResult Function(GetGroupMembers value)? getGroupMembers,
    TResult Function(GetGroupAdmin value)? getGroupAdmin,
    TResult Function(GetGroupchatsEvent value)? getGroupchatsEvent,
    TResult Function(SendGroupMessageEvent value)? sendGroupMessageEvent,
    required TResult orElse(),
  }) {
    if (sendGroupMessageEvent != null) {
      return sendGroupMessageEvent(this);
    }
    return orElse();
  }
}

abstract class SendGroupMessageEvent implements GroupChatEvent {
  const factory SendGroupMessageEvent(
      final String groupid,
      final Map<String, dynamic> chatMessageData,
      final TextEditingController controller) = _$SendGroupMessageEvent;

  String get groupid;
  Map<String, dynamic> get chatMessageData;
  TextEditingController get controller;
  @JsonKey(ignore: true)
  _$$SendGroupMessageEventCopyWith<_$SendGroupMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupChatState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get successMessage => throw _privateConstructorUsedError;
  bool get joinedOrStatus => throw _privateConstructorUsedError;
  Stream<DocumentSnapshot<Object?>> get userGroups =>
      throw _privateConstructorUsedError;
  Stream<DocumentSnapshot<Object?>> get groupMembers =>
      throw _privateConstructorUsedError;
  Stream<QuerySnapshot<Object?>> get groupChats =>
      throw _privateConstructorUsedError;
  String? get groupAdmin => throw _privateConstructorUsedError;
  String get joinStatusMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupChatStateCopyWith<GroupChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupChatStateCopyWith<$Res> {
  factory $GroupChatStateCopyWith(
          GroupChatState value, $Res Function(GroupChatState) then) =
      _$GroupChatStateCopyWithImpl<$Res, GroupChatState>;
  @useResult
  $Res call(
      {bool isLoading,
      String groupName,
      String errorMessage,
      String successMessage,
      bool joinedOrStatus,
      Stream<DocumentSnapshot<Object?>> userGroups,
      Stream<DocumentSnapshot<Object?>> groupMembers,
      Stream<QuerySnapshot<Object?>> groupChats,
      String? groupAdmin,
      String joinStatusMessage});
}

/// @nodoc
class _$GroupChatStateCopyWithImpl<$Res, $Val extends GroupChatState>
    implements $GroupChatStateCopyWith<$Res> {
  _$GroupChatStateCopyWithImpl(this._value, this._then);

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
    Object? userGroups = null,
    Object? groupMembers = null,
    Object? groupChats = null,
    Object? groupAdmin = freezed,
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
      userGroups: null == userGroups
          ? _value.userGroups
          : userGroups // ignore: cast_nullable_to_non_nullable
              as Stream<DocumentSnapshot<Object?>>,
      groupMembers: null == groupMembers
          ? _value.groupMembers
          : groupMembers // ignore: cast_nullable_to_non_nullable
              as Stream<DocumentSnapshot<Object?>>,
      groupChats: null == groupChats
          ? _value.groupChats
          : groupChats // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Object?>>,
      groupAdmin: freezed == groupAdmin
          ? _value.groupAdmin
          : groupAdmin // ignore: cast_nullable_to_non_nullable
              as String?,
      joinStatusMessage: null == joinStatusMessage
          ? _value.joinStatusMessage
          : joinStatusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $GroupChatStateCopyWith<$Res> {
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
      Stream<DocumentSnapshot<Object?>> userGroups,
      Stream<DocumentSnapshot<Object?>> groupMembers,
      Stream<QuerySnapshot<Object?>> groupChats,
      String? groupAdmin,
      String joinStatusMessage});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$GroupChatStateCopyWithImpl<$Res, _$_Initial>
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
    Object? userGroups = null,
    Object? groupMembers = null,
    Object? groupChats = null,
    Object? groupAdmin = freezed,
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
      userGroups: null == userGroups
          ? _value.userGroups
          : userGroups // ignore: cast_nullable_to_non_nullable
              as Stream<DocumentSnapshot<Object?>>,
      groupMembers: null == groupMembers
          ? _value.groupMembers
          : groupMembers // ignore: cast_nullable_to_non_nullable
              as Stream<DocumentSnapshot<Object?>>,
      groupChats: null == groupChats
          ? _value.groupChats
          : groupChats // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Object?>>,
      groupAdmin: freezed == groupAdmin
          ? _value.groupAdmin
          : groupAdmin // ignore: cast_nullable_to_non_nullable
              as String?,
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
      required this.userGroups,
      required this.groupMembers,
      required this.groupChats,
      required this.groupAdmin,
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
  final Stream<DocumentSnapshot<Object?>> userGroups;
  @override
  final Stream<DocumentSnapshot<Object?>> groupMembers;
  @override
  final Stream<QuerySnapshot<Object?>> groupChats;
  @override
  final String? groupAdmin;
  @override
  final String joinStatusMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupChatState(isLoading: $isLoading, groupName: $groupName, errorMessage: $errorMessage, successMessage: $successMessage, joinedOrStatus: $joinedOrStatus, userGroups: $userGroups, groupMembers: $groupMembers, groupChats: $groupChats, groupAdmin: $groupAdmin, joinStatusMessage: $joinStatusMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupChatState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('groupName', groupName))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('successMessage', successMessage))
      ..add(DiagnosticsProperty('joinedOrStatus', joinedOrStatus))
      ..add(DiagnosticsProperty('userGroups', userGroups))
      ..add(DiagnosticsProperty('groupMembers', groupMembers))
      ..add(DiagnosticsProperty('groupChats', groupChats))
      ..add(DiagnosticsProperty('groupAdmin', groupAdmin))
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
            (identical(other.userGroups, userGroups) ||
                other.userGroups == userGroups) &&
            (identical(other.groupMembers, groupMembers) ||
                other.groupMembers == groupMembers) &&
            (identical(other.groupChats, groupChats) ||
                other.groupChats == groupChats) &&
            (identical(other.groupAdmin, groupAdmin) ||
                other.groupAdmin == groupAdmin) &&
            (identical(other.joinStatusMessage, joinStatusMessage) ||
                other.joinStatusMessage == joinStatusMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      groupName,
      errorMessage,
      successMessage,
      joinedOrStatus,
      userGroups,
      groupMembers,
      groupChats,
      groupAdmin,
      joinStatusMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements GroupChatState {
  const factory _Initial(
      {required final bool isLoading,
      required final String groupName,
      required final String errorMessage,
      required final String successMessage,
      required final bool joinedOrStatus,
      required final Stream<DocumentSnapshot<Object?>> userGroups,
      required final Stream<DocumentSnapshot<Object?>> groupMembers,
      required final Stream<QuerySnapshot<Object?>> groupChats,
      required final String? groupAdmin,
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
  Stream<DocumentSnapshot<Object?>> get userGroups;
  @override
  Stream<DocumentSnapshot<Object?>> get groupMembers;
  @override
  Stream<QuerySnapshot<Object?>> get groupChats;
  @override
  String? get groupAdmin;
  @override
  String get joinStatusMessage;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
