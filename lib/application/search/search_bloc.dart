// import 'dart:async';
// import 'dart:developer';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:injectable/injectable.dart';
// import 'package:bloc/bloc.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:social_app/domain/search/i_search_repo.dart';
// part 'search_event.dart';
// part 'search_state.dart';
// part 'search_bloc.freezed.dart';

// @injectable
// class SearchBloc extends Bloc<SearchEvent, SearchState> {
//   final ISearchRepo searchRepo;
//   final _searchStateController = StreamController<SearchState>();
//   Stream<SearchState> get searchResultStream => _searchStateController.stream;

//   SearchBloc(this.searchRepo) : super(SearchState.intial()) {
//     void searchUsers(String searchValue) async {
//       _searchStateController.add(state.copyWith(isLoading: true));
//     }

//     on<SearchUserEvent>((event, emit) async {
//       log('messagehi s>>..s.s>>');
//       try {
//         final users = await searchRepo.searchUser(event.searchVal);
//         if (users!.docs.isEmpty) {
//           _searchStateController.add(state.copyWith(error: ""));
//         } else {
//           _searchStateController.add(state.copyWith(populatedState: users));
//         }
//       } catch (error) {
//         _searchStateController.add(state.copyWith(error: er.toString()));
//       }
//     });
//   }
// }
