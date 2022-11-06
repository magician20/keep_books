// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i14;
import 'application/auth/sign_in_bloc/signin_bloc.dart' as _i11;
import 'application/auth/sign_up_bloc/signup_bloc.dart' as _i12;
import 'application/books/book_actor/book_actor_bloc.dart' as _i18;
import 'application/books/book_add/book_add_bloc.dart' as _i19;
import 'application/books/book_watcher/book_watcher_bloc.dart' as _i21;
import 'application/books/book_watcher_active/book_watcher_active_bloc.dart'
    as _i20;
import 'application/books/books_search/books_search_bloc.dart' as _i22;
import 'application/profile/profile_bloc.dart' as _i10;
import 'application/theme/theme_bloc.dart' as _i13;
import 'domain/auth/repository/i_auth_facade.dart' as _i6;
import 'domain/book/repository/i_book_repository.dart' as _i16;
import 'domain/profile/i_profile_repository.dart' as _i8;
import 'infrastructure/auth/auth_facade.dart' as _i7;
import 'infrastructure/books/book_repository.dart' as _i17;
import 'infrastructure/books/books_service.dart' as _i15;
import 'infrastructure/core/injectable_module.dart' as _i23;
import 'infrastructure/profile/profile_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.Dio>(registerModule.dio);
  gh.singleton<_i4.FirebaseAuth>(registerModule.firebaseAuth);
  gh.singleton<_i5.FirebaseFirestore>(registerModule.firestore);
  gh.singleton<_i6.IAuthFacade>(
      _i7.AuthFacade(get<_i4.FirebaseAuth>(), get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i8.IProfileRepository>(
      () => _i9.ProfileRepository(get<_i5.FirebaseFirestore>()));
  gh.factory<_i10.ProfileBloc>(
      () => _i10.ProfileBloc(get<_i8.IProfileRepository>()));
  gh.factory<_i11.SignInBloc>(() => _i11.SignInBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i12.SignUpBloc>(() => _i12.SignUpBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i13.ThemeBloc>(() => _i13.ThemeBloc());
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(get<_i6.IAuthFacade>()));
  gh.singleton<_i15.BooksService>(_i15.BooksService(get<_i3.Dio>()));
  gh.lazySingleton<_i16.IBookRepository>(() => _i17.BookRepository(
      get<_i5.FirebaseFirestore>(), get<_i15.BooksService>()));
  gh.factory<_i18.BookActorBloc>(
      () => _i18.BookActorBloc(get<_i16.IBookRepository>()));
  gh.factory<_i19.BookAddBloc>(
      () => _i19.BookAddBloc(get<_i16.IBookRepository>()));
  gh.factory<_i20.BookWatcherActiveBloc>(
      () => _i20.BookWatcherActiveBloc(get<_i16.IBookRepository>()));
  gh.factory<_i21.BookWatcherBloc>(
      () => _i21.BookWatcherBloc(get<_i16.IBookRepository>()));
  gh.factory<_i22.BooksSearchBloc>(
      () => _i22.BooksSearchBloc(get<_i16.IBookRepository>()));
  return get;
}

class _$RegisterModule extends _i23.RegisterModule {}
