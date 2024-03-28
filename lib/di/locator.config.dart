// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/datasources/auth_data_source.dart' as _i16;
import '../data/datasources/places_data_source.dart' as _i5;
import '../data/datasources/reviews_data_source.dart' as _i20;
import '../data/datasources/routes_data_source.dart' as _i10;
import '../data/datasources/users_data_source.dart' as _i13;
import '../data/repositories/auth_repository_impl.dart' as _i18;
import '../data/repositories/places_repository_impl.dart' as _i7;
import '../data/repositories/regions_repository_impl.dart' as _i9;
import '../data/repositories/reviews_repository_impl.dart' as _i22;
import '../data/repositories/routes_repository_impl.dart' as _i12;
import '../data/repositories/users_repository_impl.dart' as _i15;
import '../domain/repositories/auth_repository.dart' as _i17;
import '../domain/repositories/places_repository.dart' as _i6;
import '../domain/repositories/regions_repository.dart' as _i8;
import '../domain/repositories/reviews_repository.dart' as _i21;
import '../domain/repositories/routes_repository.dart' as _i11;
import '../domain/repositories/users_repository.dart' as _i14;
import '../presentation/pages/regions/bloc/regions_bloc.dart' as _i19;
import 'app_module.dart' as _i23; // ignore_for_file: unnecessary_lambdas

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
  gh.singleton<_i8.RegionsRepository>(_i9.RegionsRepositoryImpl());
  gh.singleton<_i10.RoutesDataSource>(
      _i10.RoutesDataSource(get<_i4.FirebaseFirestore>()));
  gh.singleton<_i11.RoutesRepository>(
      _i12.RoutesRepositoryImpl(get<_i10.RoutesDataSource>()));
  gh.singleton<_i13.UsersDataSource>(_i13.UsersDataSource(
    get<_i4.FirebaseFirestore>(),
    get<_i3.FirebaseAuth>(),
  ));
  gh.singleton<_i14.UsersRepository>(
      _i15.UsersRepositoryImpl(get<_i13.UsersDataSource>()));
  gh.singleton<_i16.AuthDataSource>(_i16.AuthDataSource(
    get<_i3.FirebaseAuth>(),
    get<_i4.FirebaseFirestore>(),
  ));
  gh.singleton<_i17.AuthRepository>(
      _i18.AuthRepositoryImpl(get<_i16.AuthDataSource>()));
  gh.factory<_i19.RegionsBloc>(
      () => _i19.RegionsBloc(get<_i8.RegionsRepository>()));
  gh.singleton<_i20.ReviewsDataSource>(_i20.ReviewsDataSource(
    get<_i4.FirebaseFirestore>(),
    get<_i16.AuthDataSource>(),
  ));
  gh.singleton<_i21.ReviewsRepository>(
      _i22.ReviewsRepositoryImpl(get<_i20.ReviewsDataSource>()));
  return get;
}

class _$AppModule extends _i23.AppModule {}
