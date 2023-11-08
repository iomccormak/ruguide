import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruguide/domain/entities/place_model.dart';

part 'route_model.freezed.dart';

part 'route_model.g.dart';

@freezed
class RouteModel with _$RouteModel {
  const factory RouteModel({
    required String id,
    required String creatorId,
    required List<PlaceModel> places,
    required String name,
    required String description,
    double? rating,
    int? reviewCount,
    required DateTime timeStamp,
  }) = _RouteModel;

  static RouteModel getEmpty() {
    return RouteModel(
      id: 'id',
      creatorId: 'creatorId',
      places: [
        PlaceModel.getEmpty(),
        PlaceModel.getEmpty(),
        PlaceModel.getEmpty(),
      ],
      name: 'Moscow trip',
      description: 'Moscow route description',
      timeStamp: DateTime.now(),
    );
  }

  factory RouteModel.fromJson(Map<String, dynamic> json) =>
      _$RouteModelFromJson(json);
}
