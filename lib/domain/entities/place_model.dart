import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruguide/domain/entities/location_point.dart';

part 'place_model.freezed.dart';

part 'place_model.g.dart';

@freezed
class PlaceModel with _$PlaceModel {
  const factory PlaceModel({
    required String id,
    required String creatorId,
    required LocationPoint locationPoint,
    required String name,
    required String description,
    double? rating,
    int? reviewCount,
    required DateTime timeStamp,
  }) = _PlaceModel;

  static PlaceModel getEmpty() {
    return PlaceModel(
      id: 'id',
      creatorId: 'creatorId',
      locationPoint: const LocationPoint(
        lat: 55.7522200,
        long: 37.6155600,
      ),
      name: 'Moscow right now',
      description: 'Moscow desciption',
      timeStamp: DateTime.now(),
    );
  }

  factory PlaceModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceModelFromJson(json);
}
