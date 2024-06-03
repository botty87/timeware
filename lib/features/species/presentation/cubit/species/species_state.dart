part of 'species_cubit.dart';

@freezed
class SpeciesState with _$SpeciesState {
  const factory SpeciesState({
    @Default(true) bool isLoading,
    @Default([]) List<Species> species,
    @Default('') String searchQuery,
    String? errorMessage,
  }) = _SpeciesState;
}
