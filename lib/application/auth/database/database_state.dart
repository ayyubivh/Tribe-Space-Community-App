part of 'database_bloc.dart';

@freezed
class DatabaseState with _$DatabaseState {
  const factory DatabaseState({
    required bool databaseError,
    required String userData,
    required String userName,
    required String email,
    required String uid,
    required String photoUrl,
    required bool isUserJoined,
  }) = _DatabaseState;
  factory DatabaseState.initial() => const DatabaseState(
        databaseError: false,
        userData: "",
        userName: "",
        email: "",
        uid: "",
        photoUrl: "",
        isUserJoined: false,
      );
}
