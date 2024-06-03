import 'dart:isolate';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/usecases/usecase.dart';
import '../../../../../core/utilities/debouncer.dart';
import '../../../domain/entities/species/species.dart';
import '../../../domain/usecases/get_species.dart';

part 'species_cubit.freezed.dart';
part 'species_state.dart';

@injectable
class SpeciesCubit extends Cubit<SpeciesState> {
  final GetSpecies _getSpecies;

  late final Debouncer _debouncer = Debouncer();

  late List<Species> _species;

  SpeciesCubit(this._getSpecies) : super(const SpeciesState());

  void getSpeciesList() async {
    emit(state.copyWith(isLoading: true));
    final result = await _getSpecies(const NoParams());
    emit(state.copyWith(isLoading: false));

    result.fold(
      (failure) => emit(state.copyWith(errorMessage: failure.message)),
      (species) {
        _species = species;
        _filterSpecies();
      },
    );
  }

  void _filterSpecies() {
    final query = state.searchQuery.toLowerCase();

    final filteredSpecies = _species.where((species) {
      final name = species.scientificName?.toLowerCase() ?? '';
      return name.contains(query);
    }).toList();

    emit(state.copyWith(species: filteredSpecies));
  }

  void onSearchQueryChanged(String query) {
    emit(state.copyWith(searchQuery: query));
    _debouncer.run(() => _filterSpecies());
  }
}
