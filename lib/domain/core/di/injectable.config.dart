// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_app/application/auth/auth_bloc.dart' as _i8;
import 'package:social_app/application/auth/sign_in_form/sign_in_bloc.dart'
    as _i7;
import 'package:social_app/domain/auth/database/data_base_repo.dart' as _i3;
import 'package:social_app/domain/auth/i_auth_repository.dart' as _i5;
import 'package:social_app/infrastructure/auth/database/data_base_impl.dart'
    as _i4;
import 'package:social_app/infrastructure/auth/firebase_auth_impl.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DatabaseReopsitory>(() => _i4.DatabaseRepoImpl());
    gh.lazySingleton<_i5.IAuthRepo>(() => _i6.FirebaseRepository());
    gh.factory<_i7.SignInBloc>(() => _i7.SignInBloc(
          gh<_i5.IAuthRepo>(),
          gh<_i3.DatabaseReopsitory>(),
        ));
    gh.factory<_i8.AuthBloc>(() => _i8.AuthBloc(gh<_i5.IAuthRepo>()));
    return this;
  }
}
