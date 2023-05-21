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
import 'package:social_app/application/auth/auth_bloc.dart' as _i15;
import 'package:social_app/application/auth/database/database_bloc.dart'
    as _i18;
import 'package:social_app/application/auth/sign_in_form/sign_in_bloc.dart'
    as _i14;
import 'package:social_app/application/comment/comment_bloc.dart' as _i17;
import 'package:social_app/application/messages/chat_bloc.dart' as _i16;
import 'package:social_app/application/post/post_bloc.dart' as _i13;
import 'package:social_app/domain/auth/i_auth_repository.dart' as _i5;
import 'package:social_app/domain/database/data_base_repo.dart' as _i3;
import 'package:social_app/domain/messages/i_chat_repo.dart' as _i7;
import 'package:social_app/domain/post/i_post_repo.dart' as _i9;
import 'package:social_app/domain/search/i_search_repo.dart' as _i11;
import 'package:social_app/infrastructure/auth/database/data_base_impl.dart'
    as _i4;
import 'package:social_app/infrastructure/auth/firebase_auth_impl.dart' as _i6;
import 'package:social_app/infrastructure/messages/chat_repo_implemetation.dart'
    as _i8;
import 'package:social_app/infrastructure/post/post_repo_impl.dart' as _i10;
import 'package:social_app/infrastructure/search/search_repo_impl.dart' as _i12;

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
    gh.lazySingleton<_i7.IChatRepo>(() => _i8.ChatRepository());
    gh.lazySingleton<_i9.IPostRepo>(() => _i10.PostRepository());
    gh.lazySingleton<_i11.ISearchRepo>(() => _i12.SearchRepository());
    gh.factory<_i13.PostBloc>(() => _i13.PostBloc(gh<_i9.IPostRepo>()));
    gh.factory<_i14.SignInBloc>(() => _i14.SignInBloc(
          gh<_i5.IAuthRepo>(),
          gh<_i3.DatabaseReopsitory>(),
        ));
    gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(gh<_i5.IAuthRepo>()));
    gh.factory<_i16.ChatBloc>(() => _i16.ChatBloc(gh<_i7.IChatRepo>()));
    gh.factory<_i17.CommentBloc>(() => _i17.CommentBloc(gh<_i9.IPostRepo>()));
    gh.factory<_i18.DatabaseBloc>(
        () => _i18.DatabaseBloc(gh<_i3.DatabaseReopsitory>()));
    return this;
  }
}
