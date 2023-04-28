// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      uid: json['uid'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String,
      password: json['password'] as String?,
      bio: json['bio'] as String,
      photoUrl: json['photoUrl'] as String,
      following: json['following'] as String,
      followers: json['followers'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'userName': instance.userName,
      'email': instance.email,
      'password': instance.password,
      'bio': instance.bio,
      'photoUrl': instance.photoUrl,
      'following': instance.following,
      'followers': instance.followers,
    };
