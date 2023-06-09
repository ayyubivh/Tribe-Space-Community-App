import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/core/constants/firebase_constants.dart';
part 'messge_models.g.dart';
part 'messge_models.freezed.dart';

@freezed
class MessageChat with _$MessageChat {
  const factory MessageChat({
    required String idFrom,
    required String idTo,
    required String timestamp,
    required String content,
    required int type,
  }) = _MessageChat;

  factory MessageChat.fromJson(Map<String, dynamic> json) =>
      _$MessageChatFromJson(json);
  factory MessageChat.fromDocument(DocumentSnapshot doc) {
    String idFrom = doc.get(FirestoreConstants.idFrom);
    String idTo = doc.get(FirestoreConstants.idTo);
    String timestamp = doc.get(FirestoreConstants.timestamp);
    String content = doc.get(FirestoreConstants.content);
    int type = doc.get(FirestoreConstants.type);
    return MessageChat(
        idFrom: idFrom,
        idTo: idTo,
        timestamp: timestamp,
        content: content,
        type: type);
  }
}
