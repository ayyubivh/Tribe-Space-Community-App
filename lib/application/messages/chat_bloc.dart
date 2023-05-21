import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:social_app/domain/messages/i_chat_repo.dart';
part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final IChatRepo chatRepo;
  ChatBloc(this.chatRepo) : super(ChatState.initial()) {
    on<CreateGroupEvent>(_createGroupEvent);
    on<ToggleGroupJoinEvent>(_toggleGroupJoinEvent);
    on<IsUserJoined>(_isUserJoined);
  }

  FutureOr<void> _createGroupEvent(
      CreateGroupEvent event, Emitter<ChatState> emit) async {
    try {
      await chatRepo.createGroup(event.userName, event.id, event.groupName);
      emit(state.copyWith(
        isLoading: true,
        successMessage: "Group created successfully",
      ));
    } catch (e) {
      emit(state.copyWith(errorMessage: "Failed to create the group"));
    }
  }

  FutureOr<void> _toggleGroupJoinEvent(
      ToggleGroupJoinEvent event, Emitter<ChatState> emit) async {
    await chatRepo.toggleGroupJoinedOrNot(
        event.groupId, event.userName, event.groupName);
    emit(state.copyWith(
        joinedOrStatus: state.joinedOrStatus == false ? true : false,
        joinStatusMessage: state.joinedOrStatus == false
            ? "You joined the group!"
            : "You lef the group!"));
    log('joined or status ${state.joinedOrStatus.toString()}');
  }

  _isUserJoined(IsUserJoined event, Emitter<ChatState> emit) async {
    final isUserjoined =
        await chatRepo.isUserJoined(event.groupName, event.groupId);
    emit(
      state.copyWith(
        joinedOrStatus: isUserjoined,
      ),
    );
    log('on emit ${state.joinedOrStatus.toString()}  and ${isUserjoined.toString()}');
  }
}
