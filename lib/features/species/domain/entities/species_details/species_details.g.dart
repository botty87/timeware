// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeciesDetailsImpl _$$SpeciesDetailsImplFromJson(Map<String, dynamic> json) =>
    _$SpeciesDetailsImpl(
      taxonid: (json['taxonid'] as num?)?.toInt(),
      scientificName: json['scientific_name'] as String?,
      kingdom: json['kingdom'] as String?,
      phylum: json['phylum'] as String?,
      resultClass: json['class'] as String?,
      order: json['order'] as String?,
      family: json['family'] as String?,
      genus: json['genus'] as String?,
      mainCommonName: json['main_common_name'] as String?,
      authority: json['authority'] as String?,
      publishedYear: (json['published_year'] as num?)?.toInt(),
      assessmentDate: json['assessment_date'] == null
          ? null
          : DateTime.parse(json['assessment_date'] as String),
      category: json['category'] as String?,
      criteria: json['criteria'] as String?,
      populationTrend: json['population_trend'] as String?,
      marineSystem: json['marine_system'] as bool?,
      freshwaterSystem: json['freshwater_system'] as bool?,
      terrestrialSystem: json['terrestrial_system'] as bool?,
      assessor: json['assessor'] as String?,
      reviewer: json['reviewer'] as String?,
      elevationUpper: (json['elevation_upper'] as num?)?.toInt(),
      elevationLower: (json['elevation_lower'] as num?)?.toInt(),
      amendedFlag: json['amended_flag'] as bool?,
      amendedReason: json['amended_reason'] as String?,
    );

Map<String, dynamic> _$$SpeciesDetailsImplToJson(_$SpeciesDetailsImpl instance) =>
    <String, dynamic>{
      'taxonid': instance.taxonid,
      'scientific_name': instance.scientificName,
      'kingdom': instance.kingdom,
      'phylum': instance.phylum,
      'class': instance.resultClass,
      'order': instance.order,
      'family': instance.family,
      'genus': instance.genus,
      'main_common_name': instance.mainCommonName,
      'authority': instance.authority,
      'published_year': instance.publishedYear,
      'assessment_date': instance.assessmentDate?.toIso8601String(),
      'category': instance.category,
      'criteria': instance.criteria,
      'population_trend': instance.populationTrend,
      'marine_system': instance.marineSystem,
      'freshwater_system': instance.freshwaterSystem,
      'terrestrial_system': instance.terrestrialSystem,
      'assessor': instance.assessor,
      'reviewer': instance.reviewer,
      'elevation_upper': instance.elevationUpper,
      'elevation_lower': instance.elevationLower,
      'amended_flag': instance.amendedFlag,
      'amended_reason': instance.amendedReason,
    };
