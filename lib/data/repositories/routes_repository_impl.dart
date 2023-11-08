import 'package:injectable/injectable.dart';
import 'package:ruguide/data/datasources/routes_data_source.dart';
import 'package:ruguide/domain/repositories/routes_repository.dart';

@Singleton(as: RoutesRepository)
class RoutesRepositoryImpl extends RoutesRepository {
  final RoutesDataSource _routesDataSource;

  RoutesRepositoryImpl(
    this._routesDataSource,
  );
}
