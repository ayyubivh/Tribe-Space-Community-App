// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:social_app/domain/database/data_base_repo.dart';
part 'database_bloc.freezed.dart';
part 'database_event.dart';
part 'database_state.dart';

@injectable
class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  final DatabaseReopsitory _databaseReopsitory;
  DatabaseBloc(this._databaseReopsitory) : super(DatabaseState.initial()) {
    on<DatabaseFetched>(_fetchUserData);
  }
  _fetchUserData(DatabaseFetched event, Emitter<DatabaseState> emit) async {
    var userDetails = await _databaseReopsitory.getUserDetails();
    emit(state.copyWith(
      uid: userDetails.uid!,
      userName: userDetails.userName!,
    ));
  }
}
