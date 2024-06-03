import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/species_details/species_details.dart';
import '../../../domain/usecases/get_species details.dart';

part 'species_details_state.dart';
part 'species_details_cubit.freezed.dart';

@injectable
class SpeciesDetailsCubit extends Cubit<SpeciesDetailsState> {
  final GetSpeciesDetails _getSpeciesDetails;

  SpeciesDetailsCubit(this._getSpeciesDetails) : super(const SpeciesDetailsState.loading());

  void loadSpeciesDetails(int speciesId) async {
    emit(const SpeciesDetailsState.loading());
    final speciesDetailsOrFailure = await _getSpeciesDetails(GetSpeciesDetailsParams(speciesId));
    speciesDetailsOrFailure.fold(
      (failure) => emit(SpeciesDetailsState.error(message: failure.message)),
      (speciesDetails) => emit(SpeciesDetailsState.loaded(species: speciesDetails)),
    );
  }
}
