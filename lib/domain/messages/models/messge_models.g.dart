// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messge_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageChat _$$_MessageChatFromJson(Map<String, dynamic> json) =>
    _$_MessageChat(
      idFrom: json['idFrom'] as String,
      idTo: json['idTo'] as String,
      timestamp: json['timestamp'] as String,
      content: json['content'] as String,
      type: json['type'] as int,
    );

Map<String, dynamic> _$$_MessageChatToJson(_$_MessageChat instance) =>
    <String, dynamic>{
      'idFrom': instance.idFrom,
      'idTo': instance.idTo,
      'timestamp': instance.timestamp,
      'content': instance.content,
      'type': instance.type,
    };
