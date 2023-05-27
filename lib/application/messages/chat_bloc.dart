import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:social_app/domain/messages/i_chat_repo.dart';
part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

@injectable
class GroupChatBloc extends Bloc<GroupChatEvent, GroupChatState> {
  final IGroupChatRepo chatRepo;
  GroupChatBloc(this.chatRepo) : super(GroupChatState.initial()) {
    on<CreateGroupEvent>(_createGroupEvent);
    on<ToggleGroupJoinEvent>(_toggleGroupJoinEvent);
    on<IsUserJoined>(_isUserJoined);
    on<GetUserGroups>(_getUserGroups);
    on<GetGroupMembers>(_getGroupMembers);
    on<GetGroupAdmin>(_getGroupAdmin);
    on<GetGroupchatsEvent>(_getGroupchatsEvent);
    on<SendGroupMessageEvent>(_sendGroupMessageEvent);
  }

  FutureOr<void> _createGroupEvent(
      CreateGroupEvent event, Emitter<GroupChatState> emit) async {
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
      ToggleGroupJoinEvent event, Emitter<GroupChatState> emit) async {
    await chatRepo.toggleGroupJoinedOrNot(
        event.groupId, event.userName, event.groupName);
    emit(state.copyWith(
        joinedOrStatus: state.joinedOrStatus == false ? true : false,
        joinStatusMessage: state.joinedOrStatus == false
            ? "You joined the group!"
            : "You lef the group!"));
    log('joined or status ${state.joinedOrStatus.toString()}');
  }

  _isUserJoined(IsUserJoined event, Emitter<GroupChatState> emit) async {
    final isUserjoined =
        await chatRepo.isUserJoined(event.groupName, event.groupId);
    emit(
      state.copyWith(
        joinedOrStatus: isUserjoined,
      ),
    );
    log('on emit ${state.joinedOrStatus.toString()}  and ${isUserjoined.toString()}');
  }

  FutureOr<void> _getUserGroups(
      GetUserGroups event, Emitter<GroupChatState> emit) {
    final userGroupsStream = chatRepo.getUserGroups();
    emit(state.copyWith(userGroups: userGroupsStream));
  }

  FutureOr<void> _getGroupMembers(
      GetGroupMembers event, Emitter<GroupChatState> emit) {
    final groupMember = chatRepo.getGroupMembers(event.groupId);
    emit(state.copyWith(groupMembers: groupMember));
  }

  _getGroupAdmin(GetGroupAdmin event, Emitter<GroupChatState> emit) async {
    final groupAdmin = await chatRepo.getGroupAdmin(event.groupId);
    emit(state.copyWith(groupAdmin: groupAdmin));
  }

  _getGroupchatsEvent(
      GetGroupchatsEvent event, Emitter<GroupChatState> emit) async {
    final groupChats = chatRepo.getGroupChat(event.gorupId);
    emit(state.copyWith(groupChats: groupChats));
  }

  _sendGroupMessageEvent(
      SendGroupMessageEvent event, Emitter<GroupChatState> emit) async {
    try {
      await chatRepo.sendGroupMessage(event.groupid, event.chatMessageData);
      event.controller.clear();
    } catch (e) {
      throw Exception();
    }
  }
}
