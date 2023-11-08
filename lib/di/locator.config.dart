// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/datasources/auth_data_source.dart' as _i14;
import '../data/datasources/places_data_source.dart' as _i5;
import '../data/datasources/reviews_data_source.dart' as _i17;
import '../data/datasources/routes_data_source.dart' as _i8;
import '../data/datasources/users_data_source.dart' as _i11;
import '../data/repositories/auth_repository_impl.dart' as _i16;
import '../data/repositories/places_repository_impl.dart' as _i7;
import '../data/repositories/reviews_repository_impl.dart' as _i19;
import '../data/repositories/routes_repository_impl.dart' as _i10;
import '../data/repositories/users_repository_impl.dart' as _i13;
import '../domain/repositories/auth_repository.dart' as _i15;
import '../domain/repositories/places_repository.dart' as _i6;
import '../domain/repositories/reviews_repository.dart' as _i18;
import '../domain/repositories/routes_repository.dart' as _i9;
import '../domain/repositories/users_repository.dart' as _i12;
import 'app_module.dart' as _i20; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.singleton<_i3.FirebaseAuth>(appModule.firebaseAuth());
  gh.singleton<_i4.FirebaseFirestore>(appModule.fireStore());
  gh.singleton<_i5.PlacesDataSource>(
      _i5.PlacesDataSource(get<_i4.FirebaseFirestore>()));
  gh.singleton<_i6.PlacesRepository>(
      _i7.PlacesRepositoryImpl(get<_i5.PlacesDataSource>()));
  gh.singleton<_i8.RoutesDataSource>(
      _i8.RoutesDataSource(get<_i4.FirebaseFirestore>()));
  gh.singleton<_i9.RoutesRepository>(
      _i10.RoutesRepositoryImpl(get<_i8.RoutesDataSource>()));
  gh.singleton<_i11.UsersDataSource>(_i11.UsersDataSource(
    get<_i4.FirebaseFirestore>(),
    get<_i3.FirebaseAuth>(),
  ));
  gh.singleton<_i12.UsersRepository>(
      _i13.UsersRepositoryImpl(get<_i11.UsersDataSource>()));
  gh.singleton<_i14.AuthDataSource>(_i14.AuthDataSource(
    get<_i3.FirebaseAuth>(),
    get<_i4.FirebaseFirestore>(),
  ));
  gh.singleton<_i15.AuthRepository>(
      _i16.AuthRepositoryImpl(get<_i14.AuthDataSource>()));
  gh.singleton<_i17.ReviewsDataSource>(_i17.ReviewsDataSource(
    get<_i4.FirebaseFirestore>(),
    get<_i14.AuthDataSource>(),
  ));
  gh.singleton<_i18.ReviewsRepository>(
      _i19.ReviewsRepositoryImpl(get<_i17.ReviewsDataSource>()));
  return get;
}

class _$AppModule extends _i20.AppModule {}
