import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:social_app/domain/database/data_base_repo.dart';
import 'package:social_app/domain/auth/i_auth_repository.dart';

import '../../../domain/auth/model/user.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthRepo _authRepo;
  final DatabaseReopsitory _databaseReopsitory;
  SignInBloc(this._authRepo, this._databaseReopsitory)
      : super(SignInState.initial()) {
    // <<<<<<<<<<<<<<< on email changed >>>>>>>>>>>>>>>>
    final RegExp _emailRegExp = RegExp(
      r'^[a-zA-Z0-9.!#$%&*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
    );
    final RegExp _passwordRegExp = RegExp(
      r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
    );

    bool _isEmailValid(String email) {
      return _emailRegExp.hasMatch(email);
    }

    bool _isPasswordValid(String password) {
      return _passwordRegExp.hasMatch(password);
    }

    bool _isNameValid(String? displayName) {
      return displayName!.isNotEmpty;
    }

    bool _isAgeValid(int age) {
      return age >= 1 && age <= 120 ? true : false;
    }

    on<EmailChanged>((event, emit) async {
      emit(state.copyWith(
          isFormSuccessful: false,
          isFormValidateFailed: false,
          isFormValid: false,
          errorMessage: '',
          email: event.emailStr,
          isEmailValid: _isEmailValid(event.emailStr)));
    });
    on<PassWordChanged>((event, emit) {
      emit(state.copyWith(
        isFormSuccessful: false,
        isFormValidateFailed: false,
        errorMessage: "",
        password: event.passWordStr,
        isPasswordValid: _isPasswordValid(event.passWordStr),
      ));
    });

    on<NameChanged>((event, emit) {
      emit(state.copyWith(
        isFormSuccessful: false,
        isFormValidateFailed: false,
        errorMessage: "",
        userName: event.nameStr,
        isNameValid: _isNameValid(event.nameStr),
      ));
    });
    on<FormSubmitted>((event, emit) async {
      UserModels user = UserModels(
        email: state.email,
        password: state.password,
        userName: state.userName,
      );
      updateUIAndSignUp(FormSubmitted event, Emitter<SignInState> emit,
          UserModels user) async {
        emit(state.copyWith(
          errorMessage: "",
          isFormValid: _isEmailValid(state.email) &&
              _isPasswordValid(state.password!) &&
              _isNameValid(state.userName),
          isLoading: true,
        ));
        if (state.isFormValid) {
          try {
            UserCredential? authUser = await _authRepo.signUp(user);
            UserModels updateUser = user.copyWith(uid: authUser!.user!.uid);
            await _databaseReopsitory.saveUserData(updateUser);
            emit(state.copyWith(
              isLoading: false,
              errorMessage: "",
            ));
          } on FirebaseAuthException catch (e) {
            emit(state.copyWith(
              isLoading: false,
              errorMessage: e.message!,
              isFormValid: false,
            ));
          }
        } else {
          emit(state.copyWith(
            isLoading: false,
            isFormValid: false,
            isFormValidateFailed: true,
          ));
        }
      }

      authenticateUser(FormSubmitted event, Emitter<SignInState> emit,
          UserModels user) async {
        emit(state.copyWith(
          errorMessage: "",
          isFormValid:
              _isEmailValid(state.email) && _isPasswordValid(state.password!),
          isLoading: true,
        ));
        if (state.isFormValid) {
          try {
            await _authRepo.signIn(user);
            emit(state.copyWith(
              isLoading: false,
              errorMessage: "",
            ));
          } on FirebaseAuthException catch (e) {
            emit(state.copyWith(
              isLoading: false,
              errorMessage: e.message!,
              isFormValid: false,
            ));
          }
        } else {
          emit(state.copyWith(
              isLoading: false,
              isFormValid: false,
              isFormValidateFailed: true));
        }
      }

      if (event.value == Status.signUp) {
        await updateUIAndSignUp(event, emit, user);
      } else if (event.value == Status.signIn) {
        await authenticateUser(event, emit, user);
      }
    });
    on<SignWithGooglePressed>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      try {
        await _authRepo.signWithGoodle();
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: "",
            isFormValid: true,
          ),
        );
      } on FirebaseAuthException catch (e) {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: e.message!,
          isFormValid: false,
        ));
      }
    });

    on<FomrSucceeded>((event, emit) {
      emit(state.copyWith(isFormSuccessful: true));
    });
  }
}
