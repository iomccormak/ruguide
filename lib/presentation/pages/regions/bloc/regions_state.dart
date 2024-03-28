part of 'regions_bloc.dart';

@freezed
class RegionsState with _$RegionsState {
  const factory RegionsState.initial({
    @Default([]) List<RegionEntity> regions,
  }) = Initial;
}
