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
import 'package:social_app/application/auth/auth_bloc.dart' as _i11;
import 'package:social_app/application/auth/database/database_bloc.dart'
    as _i13;
import 'package:social_app/application/auth/sign_in_form/sign_in_bloc.dart'
    as _i10;
import 'package:social_app/application/comment/comment_bloc.dart' as _i12;
import 'package:social_app/application/post/post_bloc.dart' as _i9;
import 'package:social_app/domain/auth/i_auth_repository.dart' as _i5;
import 'package:social_app/domain/database/data_base_repo.dart' as _i3;
import 'package:social_app/domain/post/i_post_repo.dart' as _i7;
import 'package:social_app/infrastructure/auth/database/data_base_impl.dart'
    as _i4;
import 'package:social_app/infrastructure/auth/firebase_auth_impl.dart' as _i6;
import 'package:social_app/infrastructure/post/post_repo_impl.dart' as _i8;

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
    gh.lazySingleton<_i7.IPostRepo>(() => _i8.PostRepository());
    gh.factory<_i9.PostBloc>(() => _i9.PostBloc(gh<_i7.IPostRepo>()));
    gh.factory<_i10.SignInBloc>(() => _i10.SignInBloc(
          gh<_i5.IAuthRepo>(),
          gh<_i3.DatabaseReopsitory>(),
        ));
    gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(gh<_i5.IAuthRepo>()));
    gh.factory<_i12.CommentBloc>(() => _i12.CommentBloc(gh<_i7.IPostRepo>()));
    gh.factory<_i13.DatabaseBloc>(
        () => _i13.DatabaseBloc(gh<_i3.DatabaseReopsitory>()));
    return this;
  }
}
