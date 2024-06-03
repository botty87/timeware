// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'species.freezed.dart';
part 'species.g.dart';

@freezed
class Species with _$Species {
  const factory Species({
    @JsonKey(name: 'taxonid') int? taxonId,
    @JsonKey(name: 'scientific_name') String? scientificName,
    @JsonKey(name: 'subspecies') String? subspecies,
    @JsonKey(name: 'rank') String? rank,
    @JsonKey(name: 'subpopulation') String? subpopulation,
  }) = _Species;

  factory Species.fromJson(Map<String, dynamic> json) => _$SpeciesFromJson(json);
}