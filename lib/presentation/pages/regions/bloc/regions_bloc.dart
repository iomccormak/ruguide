import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ruguide/domain/entities/region/region_entity.dart';
import 'package:ruguide/domain/repositories/regions_repository.dart';

part 'regions_event.dart';
part 'regions_state.dart';
part 'regions_bloc.freezed.dart';

@injectable
class RegionsBloc extends Bloc<RegionsEvent, RegionsState> {
  final RegionsRepository _regionsRepository;
  RegionsBloc(
    this._regionsRepository,
  ) : super(const Initial()) {
    on<Started>(_onStarted);
  }

  Future<void> _onStarted(
    RegionsEvent event,
    Emitter<RegionsState> emit,
  ) async {
    final regions = await _regionsRepository.getRegions();
    emit(state.copyWith(regions: regions));
  }
}
