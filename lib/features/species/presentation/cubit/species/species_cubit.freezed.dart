// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'species_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpeciesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Species> get species => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpeciesStateCopyWith<SpeciesState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesStateCopyWith<$Res> {
  factory $SpeciesStateCopyWith(SpeciesState value, $Res Function(SpeciesState) then) =
      _$SpeciesStateCopyWithImpl<$Res, SpeciesState>;
  @useResult
  $Res call({bool isLoading, List<Species> species, String searchQuery, String? errorMessage});
}

/// @nodoc
class _$SpeciesStateCopyWithImpl<$Res, $Val extends SpeciesState>
    implements $SpeciesStateCopyWith<$Res> {
  _$SpeciesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? species = null,
    Object? searchQuery = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as List<Species>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeciesStateImplCopyWith<$Res> implements $SpeciesStateCopyWith<$Res> {
  factory _$$SpeciesStateImplCopyWith(
          _$SpeciesStateImpl value, $Res Function(_$SpeciesStateImpl) then) =
      __$$SpeciesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Species> species, String searchQuery, String? errorMessage});
}

/// @nodoc
class __$$SpeciesStateImplCopyWithImpl<$Res>
    extends _$SpeciesStateCopyWithImpl<$Res, _$SpeciesStateImpl>
    implements _$$SpeciesStateImplCopyWith<$Res> {
  __$$SpeciesStateImplCopyWithImpl(
      _$SpeciesStateImpl _value, $Res Function(_$SpeciesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? species = null,
    Object? searchQuery = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SpeciesStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      species: null == species
          ? _value._species
          : species // ignore: cast_nullable_to_non_nullable
              as List<Species>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SpeciesStateImpl implements _SpeciesState {
  const _$SpeciesStateImpl(
      {this.isLoading = true,
      final List<Species> species = const [],
      this.searchQuery = '',
      this.errorMessage})
      : _species = species;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Species> _species;
  @override
  @JsonKey()
  List<Species> get species {
    if (_species is EqualUnmodifiableListView) return _species;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_species);
  }

  @override
  @JsonKey()
  final String searchQuery;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SpeciesState(isLoading: $isLoading, species: $species, searchQuery: $searchQuery, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeciesStateImpl &&
            (identical(other.isLoading, isLoading) || other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._species, _species) &&
            (identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery) &&
            (identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_species), searchQuery, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeciesStateImplCopyWith<_$SpeciesStateImpl> get copyWith =>
      __$$SpeciesStateImplCopyWithImpl<_$SpeciesStateImpl>(this, _$identity);
}

abstract class _SpeciesState implements SpeciesState {
  const factory _SpeciesState(
      {final bool isLoading,
      final List<Species> species,
      final String searchQuery,
      final String? errorMessage}) = _$SpeciesStateImpl;

  @override
  bool get isLoading;
  @override
  List<Species> get species;
  @override
  String get searchQuery;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SpeciesStateImplCopyWith<_$SpeciesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
