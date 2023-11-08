import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    String? id,
    String? email,
    String? name,
    String? photoUrl,
    required String provider,
    double? rating,
    int? placesCount,
    int? routesCount,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
