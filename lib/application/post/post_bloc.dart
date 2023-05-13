import 'dart:developer';
import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/domain/post/i_post_repo.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

@injectable
class PostBloc extends Bloc<PostEvent, PostState> {
  final IPostRepo iPostRepo;
  PostBloc(this.iPostRepo) : super(PostState.initial()) {
    on<UploadPostEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        // Uint8List file = await pickimage(event.source);
        await iPostRepo.uploadPost(event.description, event.file, event.uid,
            event.userName, event.profileImage);
        emit(state.copyWith(
          isLoading: false,
          postUploadSuccess: true,
        ));
      } on FirebaseException catch (e) {
        emit(state.copyWith(
            isLoading: false,
            errorMessage: e.message!,
            postUploadFailure: true));
        log('post bloc erroo ${e.message}');
      }
    });

    on<DeletePostEvent>((event, emit) {
      try {
        iPostRepo.deletePost(event.postId);
      } on FirebaseException catch (e) {
        log(e.toString());
      }
    });

    on<LikepostEvent>((event, emit) {
      try {
        iPostRepo.likePost(event.postId, event.uid, event.likes);
      } catch (e) {
        throw Exception();
      }
    });

    on<FollowUserEvent>((event, emit) {
      try {
        iPostRepo.followUser(event.uid, event.followId);
      } catch (e) {
        throw Exception();
      }
    });
  }
}
