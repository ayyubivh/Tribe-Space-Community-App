import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment_model.g.dart';
part 'comment_model.freezed.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    required String profilePic,
    required String name,
    required String uid,
    required String text,
    required String commentId,
    final dynamic datePublished,
  }) = _CommentModel;
  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
