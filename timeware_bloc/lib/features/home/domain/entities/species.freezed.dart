// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'species.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Species _$SpeciesFromJson(Map<String, dynamic> json) {
  return _Species.fromJson(json);
}

/// @nodoc
mixin _$Species {
  @JsonKey(name: 'taxonid')
  int? get taxonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'scientific_name')
  String? get scientificName => throw _privateConstructorUsedError;
  @JsonKey(name: 'subspecies')
  String? get subspecies => throw _privateConstructorUsedError;
  @JsonKey(name: 'rank')
  String? get rank => throw _privateConstructorUsedError;
  @JsonKey(name: 'subpopulation')
  String? get subpopulation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeciesCopyWith<Species> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesCopyWith<$Res> {
  factory $SpeciesCopyWith(Species value, $Res Function(Species) then) =
      _$SpeciesCopyWithImpl<$Res, Species>;
  @useResult
  $Res call(
      {@JsonKey(name: 'taxonid') int? taxonId,
      @JsonKey(name: 'scientific_name') String? scientificName,
      @JsonKey(name: 'subspecies') String? subspecies,
      @JsonKey(name: 'rank') String? rank,
      @JsonKey(name: 'subpopulation') String? subpopulation});
}

/// @nodoc
class _$SpeciesCopyWithImpl<$Res, $Val extends Species>
    implements $SpeciesCopyWith<$Res> {
  _$SpeciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taxonId = freezed,
    Object? scientificName = freezed,
    Object? subspecies = freezed,
    Object? rank = freezed,
    Object? subpopulation = freezed,
  }) {
    return _then(_value.copyWith(
      taxonId: freezed == taxonId
          ? _value.taxonId
          : taxonId // ignore: cast_nullable_to_non_nullable
              as int?,
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String?,
      subspecies: freezed == subspecies
          ? _value.subspecies
          : subspecies // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
      subpopulation: freezed == subpopulation
          ? _value.subpopulation
          : subpopulation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeciesImplCopyWith<$Res> implements $SpeciesCopyWith<$Res> {
  factory _$$SpeciesImplCopyWith(
          _$SpeciesImpl value, $Res Function(_$SpeciesImpl) then) =
      __$$SpeciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'taxonid') int? taxonId,
      @JsonKey(name: 'scientific_name') String? scientificName,
      @JsonKey(name: 'subspecies') String? subspecies,
      @JsonKey(name: 'rank') String? rank,
      @JsonKey(name: 'subpopulation') String? subpopulation});
}

/// @nodoc
class __$$SpeciesImplCopyWithImpl<$Res>
    extends _$SpeciesCopyWithImpl<$Res, _$SpeciesImpl>
    implements _$$SpeciesImplCopyWith<$Res> {
  __$$SpeciesImplCopyWithImpl(
      _$SpeciesImpl _value, $Res Function(_$SpeciesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taxonId = freezed,
    Object? scientificName = freezed,
    Object? subspecies = freezed,
    Object? rank = freezed,
    Object? subpopulation = freezed,
  }) {
    return _then(_$SpeciesImpl(
      taxonId: freezed == taxonId
          ? _value.taxonId
          : taxonId // ignore: cast_nullable_to_non_nullable
              as int?,
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String?,
      subspecies: freezed == subspecies
          ? _value.subspecies
          : subspecies // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String?,
      subpopulation: freezed == subpopulation
          ? _value.subpopulation
          : subpopulation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeciesImpl implements _Species {
  const _$SpeciesImpl(
      {@JsonKey(name: 'taxonid') this.taxonId,
      @JsonKey(name: 'scientific_name') this.scientificName,
      @JsonKey(name: 'subspecies') this.subspecies,
      @JsonKey(name: 'rank') this.rank,
      @JsonKey(name: 'subpopulation') this.subpopulation});

  factory _$SpeciesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeciesImplFromJson(json);

  @override
  @JsonKey(name: 'taxonid')
  final int? taxonId;
  @override
  @JsonKey(name: 'scientific_name')
  final String? scientificName;
  @override
  @JsonKey(name: 'subspecies')
  final String? subspecies;
  @override
  @JsonKey(name: 'rank')
  final String? rank;
  @override
  @JsonKey(name: 'subpopulation')
  final String? subpopulation;

  @override
  String toString() {
    return 'Species(taxonId: $taxonId, scientificName: $scientificName, subspecies: $subspecies, rank: $rank, subpopulation: $subpopulation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeciesImpl &&
            (identical(other.taxonId, taxonId) || other.taxonId == taxonId) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            (identical(other.subspecies, subspecies) ||
                other.subspecies == subspecies) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.subpopulation, subpopulation) ||
                other.subpopulation == subpopulation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, taxonId, scientificName, subspecies, rank, subpopulation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeciesImplCopyWith<_$SpeciesImpl> get copyWith =>
      __$$SpeciesImplCopyWithImpl<_$SpeciesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeciesImplToJson(
      this,
    );
  }
}

abstract class _Species implements Species {
  const factory _Species(
          {@JsonKey(name: 'taxonid') final int? taxonId,
          @JsonKey(name: 'scientific_name') final String? scientificName,
          @JsonKey(name: 'subspecies') final String? subspecies,
          @JsonKey(name: 'rank') final String? rank,
          @JsonKey(name: 'subpopulation') final String? subpopulation}) =
      _$SpeciesImpl;

  factory _Species.fromJson(Map<String, dynamic> json) = _$SpeciesImpl.fromJson;

  @override
  @JsonKey(name: 'taxonid')
  int? get taxonId;
  @override
  @JsonKey(name: 'scientific_name')
  String? get scientificName;
  @override
  @JsonKey(name: 'subspecies')
  String? get subspecies;
  @override
  @JsonKey(name: 'rank')
  String? get rank;
  @override
  @JsonKey(name: 'subpopulation')
  String? get subpopulation;
  @override
  @JsonKey(ignore: true)
  _$$SpeciesImplCopyWith<_$SpeciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
