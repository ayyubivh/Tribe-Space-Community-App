// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/domain/auth/database/data_base_repo.dart';
import 'package:social_app/domain/auth/model/user.dart';
part 'database_event.dart';
part 'database_state.dart';
part 'database_bloc.freezed.dart';

class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  final DatabaseReopsitory _databaseReopsitory;
  DatabaseBloc(this._databaseReopsitory) : super(const Initial()) {
    on<DatabaseFetched>(_fetchUserData);
  }
  _fetchUserData(DatabaseFetched event, Emitter<DatabaseState> emit) async {
    List<UserModels> listofUserData =
        await _databaseReopsitory.retrieveUserData();
    emit(
      DatabaseSuccess(
          userName: event.userName, listOfListUserData: listofUserData),
    );
  }
}
