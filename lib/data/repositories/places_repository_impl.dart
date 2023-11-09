import 'package:injectable/injectable.dart';
import 'package:ruguide/data/datasources/places_data_source.dart';
import 'package:ruguide/domain/repositories/places_repository.dart';

@Singleton(as: PlacesRepository)
class PlacesRepositoryImpl extends PlacesRepository {
  final PlacesDataSource _placesDataSource;

  PlacesRepositoryImpl(
    this._placesDataSource,
  );
}
