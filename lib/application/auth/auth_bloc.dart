import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:social_app/domain/auth/i_auth_repository.dart';
import 'package:social_app/domain/auth/model/user.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepo authRepo;
  AuthBloc(this.authRepo) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      if (event is AuthRequested) {
        UserModels user = await authRepo.getCurrentUser().first;
        if (user.uid != "uid") {
          String? userName = await authRepo.retrieveUserName(user);
          log('user name test >>>>>>>>$userName');

          emit(AuthenticationSuccess(
            userName: userName.toString(),
          ));
        } else {
          emit(const AuthenticationFailure());
        }
      } else if (event is AuthSignOut) {
        await authRepo.signOut();
        emit(const AuthenticationFailure());
      }
    });
  }
}
