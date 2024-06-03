// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'species_details.freezed.dart';
part 'species_details.g.dart';

@freezed
class SpeciesDetails with _$SpeciesDetails {
  factory SpeciesDetails({
    @JsonKey(name: 'taxonid') int? taxonid,
    @JsonKey(name: 'scientific_name') String? scientificName,
    @JsonKey(name: 'kingdom') String? kingdom,
    @JsonKey(name: 'phylum') String? phylum,
    @JsonKey(name: 'class') String? resultClass,
    @JsonKey(name: 'order') String? order,
    @JsonKey(name: 'family') String? family,
    @JsonKey(name: 'genus') String? genus,
    @JsonKey(name: 'main_common_name') String? mainCommonName,
    @JsonKey(name: 'authority') String? authority,
    @JsonKey(name: 'published_year') int? publishedYear,
    @JsonKey(name: 'assessment_date') DateTime? assessmentDate,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'criteria') String? criteria,
    @JsonKey(name: 'population_trend') String? populationTrend,
    @JsonKey(name: 'marine_system') bool? marineSystem,
    @JsonKey(name: 'freshwater_system') bool? freshwaterSystem,
    @JsonKey(name: 'terrestrial_system') bool? terrestrialSystem,
    @JsonKey(name: 'assessor') String? assessor,
    @JsonKey(name: 'reviewer') String? reviewer,
    @JsonKey(name: 'elevation_upper') int? elevationUpper,
    @JsonKey(name: 'elevation_lower') int? elevationLower,
    @JsonKey(name: 'amended_flag') bool? amendedFlag,
    @JsonKey(name: 'amended_reason') String? amendedReason,
  }) = _SpeciesDetails;

  factory SpeciesDetails.fromJson(Map<String, dynamic> json) => _$SpeciesDetailsFromJson(json);
}
