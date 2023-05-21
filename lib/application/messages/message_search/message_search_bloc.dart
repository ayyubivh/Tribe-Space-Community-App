import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_search_event.dart';
part 'message_search_state.dart';
part 'message_search_bloc.freezed.dart';

class MessageSearchBloc extends Bloc<MessageSearchEvent, MessageSearchState> {
  final StreamController<bool> btnClearController = StreamController<bool>();

  MessageSearchBloc() : super(MessageSearchState.initial()) {
    on<Started>((event, emit) {
      emit(state.copyWith(
        searchValue: event.searchVal,
        isBool: true,
      ));
    });
    on<Empty>((event, emit) {
      emit(state.copyWith(
        searchValue: "",
        isBool: false,
      ));
    });
  }
}
