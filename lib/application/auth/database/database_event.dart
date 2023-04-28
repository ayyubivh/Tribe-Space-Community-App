part of 'database_bloc.dart';

@freezed
class DatabaseEvent with _$DatabaseEvent {
  const factory DatabaseEvent.databaseFetched({
    required String userName,
  }) = DatabaseFetched;
}
