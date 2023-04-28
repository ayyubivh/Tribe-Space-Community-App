import "package:flutter/foundation.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}

// class AuthFailure {
//   final String message;

//   AuthFailure(this.message);
// }
// class AuthFailure {
//   final String message;

//   AuthFailure(this.message);
// }

// extension AuthServiceFailureX on AuthFailure {
//   static AuthFailure fromException(dynamic e) {
//     return AuthFailure(e.toString());
//   }
// }
