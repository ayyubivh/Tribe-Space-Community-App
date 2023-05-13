import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/domain/post/i_post_repo.dart';
import 'package:injectable/injectable.dart';

part 'comment_event.dart';
part 'comment_state.dart';
part 'comment_bloc.freezed.dart';

@injectable
class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final IPostRepo postRepo;
  CommentBloc(this.postRepo) : super(CommentState.initial()) {
    on<SetCommentEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        await postRepo.commentPost(
          event.postId,
          event.text,
          event.uid,
          event.name,
          event.profilePic,
        );
        emit(
          state.copyWith(isLoading: false, commentSuccess: true),
        );
      } on FirebaseException catch (e) {
        emit(state.copyWith(
            isLoading: false, errorMessage: e.message!, commentFailure: true));
        log('post bloc erroo ${e.message}');
      }
    });
  }
}
