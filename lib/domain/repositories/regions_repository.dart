import 'package:ruguide/domain/entities/region/region_entity.dart';

abstract class RegionsRepository {
  Future<List<RegionEntity>> getRegions();
}
