part of 'species_details_cubit.dart';

@freezed
sealed class SpeciesDetailsState with _$SpeciesDetailsState {
  const factory SpeciesDetailsState.loading() = SpeciesDetailsStateLoading;

  const factory SpeciesDetailsState.loaded({required SpeciesDetails species}) =
      SpeciesDetailsStateLoaded;

  const factory SpeciesDetailsState.error({required String message}) = SpeciesDetailsStateError;
}
