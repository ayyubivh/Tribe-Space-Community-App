part of 'database_bloc.dart';

@freezed
class DatabaseState with _$DatabaseState {
  const factory DatabaseState.initial() = Initial;

  const factory DatabaseState.databaseError() = DatabaseError;
  const factory DatabaseState.databaseSuccess(
      {required String userName,
      required List listOfListUserData}) = DatabaseSuccess;
}
