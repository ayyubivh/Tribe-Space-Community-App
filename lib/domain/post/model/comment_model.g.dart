// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentModel _$$_CommentModelFromJson(Map<String, dynamic> json) =>
    _$_CommentModel(
      profilePic: json['profilePic'] as String,
      name: json['name'] as String,
      uid: json['uid'] as String,
      text: json['text'] as String,
      commentId: json['commentId'] as String,
      datePublished: json['datePublished'],
    );

Map<String, dynamic> _$$_CommentModelToJson(_$_CommentModel instance) =>
    <String, dynamic>{
      'profilePic': instance.profilePic,
      'name': instance.name,
      'uid': instance.uid,
      'text': instance.text,
      'commentId': instance.commentId,
      'datePublished': instance.datePublished,
    };
