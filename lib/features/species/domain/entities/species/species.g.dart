// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeciesImpl _$$SpeciesImplFromJson(Map<String, dynamic> json) => _$SpeciesImpl(
      taxonId: (json['taxonid'] as num?)?.toInt(),
      scientificName: json['scientific_name'] as String?,
      subspecies: json['subspecies'] as String?,
      rank: json['rank'] as String?,
      subpopulation: json['subpopulation'] as String?,
    );

Map<String, dynamic> _$$SpeciesImplToJson(_$SpeciesImpl instance) => <String, dynamic>{
      'taxonid': instance.taxonId,
      'scientific_name': instance.scientificName,
      'subspecies': instance.subspecies,
      'rank': instance.rank,
      'subpopulation': instance.subpopulation,
    };
